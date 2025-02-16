<template>
	<el-main class="bg">
		<el-form ref="form" :model="form" status-icon label-width="120px" v-if="is_view()">
			<el-col v-if="user_group === '管理员' || $check_field('get','user') || $check_field('add','user') || $check_field('set','user')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="用户" prop="user">
						<el-select v-if="user_group === '管理员' || (form['health_assessment_id'] && $check_field('set','user')) || (!form['health_assessment_id'] && $check_field('add','user'))" id="user" v-model="form['user']" :disabled="disabledObj['user_isDisabled']">
							<el-option v-for="o in list_user_user" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
									   :value="o['user_id']">
							</el-option>
						</el-select>
						<el-select v-else-if="$check_field('get','user')" id="user" v-model="form['user']" :disabled="true">
							<el-option v-for="o in list_user_user" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
									   :value="o['user_id']">
							</el-option>
						</el-select>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','full_name') || $check_field('add','full_name') || $check_field('set','full_name')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="姓名" prop="full_name">
					<el-input id="full_name" v-model="form['full_name']" placeholder="请输入姓名"
							  v-if="user_group === '管理员' || (form['health_assessment_id'] && $check_field('set','full_name')) || (!form['health_assessment_id'] && $check_field('add','full_name'))" :disabled="disabledObj['full_name_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','full_name')">{{form['full_name']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','evaluation_type') || $check_field('add','evaluation_type') || $check_field('set','evaluation_type')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="评估类型" prop="evaluation_type">
					<el-select id="evaluation_type" v-model="form['evaluation_type']"
						v-if="user_group === '管理员' || (form['health_assessment_id'] && $check_field('set','evaluation_type')) || (!form['health_assessment_id'] && $check_field('add','evaluation_type'))">
						<el-option v-for="o in list_evaluation_type" :key="o" :label="o" :value="o">
						</el-option>
					</el-select>
					<div v-else-if="$check_field('get','evaluation_type')">{{form['evaluation_type']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','evaluation_time') || $check_field('add','evaluation_time') || $check_field('set','evaluation_time')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="测评时间" prop="evaluation_time">
					<el-date-picker :disabled="disabledObj['evaluation_time_isDisabled']" v-if="user_group === '管理员' || (form['health_assessment_id'] && $check_field('set','evaluation_time')) || (!form['health_assessment_id'] && $check_field('add','evaluation_time'))" id="evaluation_time"
						v-model="form['evaluation_time']" type="datetime" placeholder="选择日期时间">
					</el-date-picker>
					<div v-else-if="$check_field('get','evaluation_time')">{{form['evaluation_time']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','evaluation_report') || $check_field('add','evaluation_report') || $check_field('set','evaluation_report')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="测评报告" prop="evaluation_report">
					<div v-if="disabledObj['evaluation_report_isDisabled']">
						<div v-if="$check_field('get','evaluation_report')">
							<el-button type="primary" @click="$download($fullUrl(form['evaluation_report']),form['evaluation_report'])">下载<i
									class="el-icon-download el-icon--right"></i></el-button>
						</div>
					</div>
					<div v-else>
						<el-upload v-if="user_group === '管理员' || (form['health_assessment_id'] && $check_field('set','evaluation_report')) || (!form['health_assessment_id'] && $check_field('add','evaluation_report'))" class="upload-demo" drag
								   action="" style="max-width: 300px;width: 100%;" :http-request="upload_evaluation_report" :limit="1" accept="">
							<i class="el-icon-upload"></i>
							<div class="el-upload__text">将文件拖到此处，或<em>点击上传</em></div>
						</el-upload>
						<div v-else-if="$check_field('get','evaluation_report')">
							<el-button type="primary" @click="$download($fullUrl(form['evaluation_report']),form['evaluation_report'])">下载<i
									class="el-icon-download el-icon--right"></i></el-button>
						</div>
					</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','evaluation_results') || $check_field('add','evaluation_results') || $check_field('set','evaluation_results')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="测评结果" prop="evaluation_results">
					<el-input type="textarea" id="evaluation_results" v-model="form['evaluation_results']" placeholder="请输入测评结果"
						v-if="user_group === '管理员' || (form['health_assessment_id'] && $check_field('set','evaluation_results')) || (!form['health_assessment_id'] && $check_field('add','evaluation_results'))" :disabled="disabledObj['evaluation_results_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','evaluation_results')">{{form['evaluation_results']}}</div>
				</el-form-item>
			</el-col>
			<el-col :xs="24" :sm="12" :lg="8">
				<el-form-item>
					<el-button type="primary" @click="submit()">提交</el-button>
					<el-button @click="cancel()">取消</el-button>
				</el-form-item>
			</el-col>

		</el-form>
	</el-main>
</template>

<script>
	import mixin from "@/mixins/page.js";

	export default {
		mixins: [mixin],
		data() {
			return {
				field: "health_assessment_id",
				url_add: "~/api/health_assessment/add?",
				url_set: "~/api/health_assessment/set?",
				url_get_obj: "~/api/health_assessment/get_obj?",
				url_upload: "~/api/health_assessment/upload?",

				query: {
					"health_assessment_id": 0,
				},

				form: {
					"user": 0, // 用户
					"full_name":'', // 姓名
					"evaluation_type":'', // 评估类型
					"evaluation_time":'', // 测评时间
					"evaluation_report":'', // 测评报告
					"evaluation_results":'', // 测评结果
					"health_assessment_id": 0, // ID

				},
				disabledObj:{
					"user_isDisabled": false,
					"full_name_isDisabled": false,
					"evaluation_type_isDisabled": false,
					"evaluation_time_isDisabled": false,
					"evaluation_report_isDisabled": false,
					"evaluation_results_isDisabled": false,
				},
				// 用户列表
				list_user_user: [],
				//评估类型选项列表
				list_evaluation_type: ['体质测评','心理测评','风险测评'],

			}
		},
		methods: {
			/**
			 * 获取注册用户用户列表
			 */
			async get_list_user_user() {
                // if(this.user_group !== "管理员" && this.form["user"] === 0) {
                //     this.form["user"] = this.user.user_id;
                // }
                var json = await this.$get("~/api/user/get_list?user_group=注册用户");
                if(json.result && json.result.list){
                    this.list_user_user = json.result.list;
                }
                else if(json.error){
                    console.error(json.error);
                }
			},
			get_user_user(id){
				var obj = this.list_user_user.getObj({"user_id":id});
				var ret = "";
				if(obj){
					if(obj.nickname){
						ret = obj.nickname;}
					else{
						ret = obj.username;
					}
				}
				return ret;
			},
			/**
			 * 上传测评报告
			 * @param {Object} param文件参数
			 */
			upload_evaluation_report(param){
				this.uploadFile(param.file, "evaluation_report");
			},

			/**
			 * 获取对象之前
			 * @param {Object} param
			 */
			get_obj_before(param) {
				var form = "";
				// 获取缓存数据附加
				form = $.db.get("form");
				$.push(this.form ,form);
				/**
				* 请求列表前
				* @param {Object} param
				*/
				var user_group = this.user.user_group;
				if (user_group !== "管理员") {
					switch (user_group) {
						case "用户":
							if(param["user"] > 0){
								param["user"] = this.user.user_id;
							}
							break;
					}
				}
				if(this.form && form){
					Object.keys(this.form).forEach(key => {
						Object.keys(form).forEach(dbKey => {
							// if(dbKey === "charging_standard"){
							// 	this.form['charging_rules'] = form[dbKey];
							// 	this.disabledObj['charging_rules_isDisabled'] = true;
							// };
							if(key === dbKey){
								this.disabledObj[key+'_isDisabled'] = true;
							}
						})
					})
				}
				this.form["evaluation_time"] = this.$toTime(parseInt(this.form["evaluation_time"]),"yyyy-MM-dd hh:mm:ss")
				$.db.del("form");
				return param;
			},

			/**
			 * 获取对象之后
			 * @param {Object} json
			 * @param {Object} func
			 */
			get_obj_after(json, func){
				if(parseInt(this.form["evaluation_time"]) > 9999){
					this.form["evaluation_time"] = this.$toTime(parseInt(this.form["evaluation_time"]),"yyyy-MM-dd hh:mm:ss")
				}

			},

			is_view(){
				var bl = this.user_group == "管理员";

				if(!bl){
					bl = this.$check_action('/health_assessment/table','add');
					console.log(bl ? "你有表格添加权限视作有添加权限" : "你没有表格添加权限");
				}
				if(!bl){
					bl = this.$check_action('/health_assessment/table','set');
					console.log(bl ? "你有表格添加权限视作有修改权限" : "你没有表格修改权限");
				}
				if(!bl){
					bl = this.$check_action('/health_assessment/view','add');
					console.log(bl ? "你有视图添加权限视作有添加权限" : "你没有视图添加权限");
				}
				if(!bl){
					bl = this.$check_action('/health_assessment/view','set');
					console.log(bl ? "你有视图修改权限视作有修改权限" : "你没有视图修改权限");
				}
				if(!bl){
					bl = this.$check_action('/health_assessment/view','get');
					console.log(bl ? "你有视图查询权限视作有查询权限" : "你没有视图查询权限");
				}

				console.log(bl ? "具有当前页面的查看权，请注意这不代表你有字段的查看权" : "无权查看当前页，请注意即便有字段查询权限没有页面查询权限也不行");

				return bl;
			},
			/**
			 * 上传文件
			 * @param {Object} param
			 */
			uploadimg(param) {
				this.uploadFile(param.file, "avatar");
			},

		},
		created() {
			this.get_list_user_user();
		}
	}
</script>

<style>
	.avatar-uploader .el-upload {
		border: 1px dashed #d9d9d9;
		border-radius: 6px;
		cursor: pointer;
		position: relative;
		overflow: hidden;
	}

	.avatar-uploader .el-upload:hover {
		border-color: #409EFF;
	}

	.avatar-uploader-icon {
		font-size: 28px;
		color: #8c939d;
		width: 178px;
		height: 178px;
		line-height: 178px;
		text-align: center;
	}

	.avatar {
		width: 178px;
		height: 178px;
		display: block;
	}
</style>
