<template>
	<el-main class="bg">
		<el-form ref="form" :model="form" status-icon label-width="120px" v-if="is_view()">
			<el-col v-if="user_group === '管理员' || $check_field('get','order_number') || $check_field('add','order_number') || $check_field('set','order_number')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="订单号" prop="order_number">
					<el-input id="order_number" v-model="form['order_number']" placeholder="请输入订单号"
							  v-if="user_group === '管理员' || (form['physical_examination_results_id'] && $check_field('set','order_number')) || (!form['physical_examination_results_id'] && $check_field('add','order_number'))" :disabled="disabledObj['order_number_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','order_number')">{{form['order_number']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','package_number') || $check_field('add','package_number') || $check_field('set','package_number')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="套餐编号" prop="package_number">
					<el-input id="package_number" v-model="form['package_number']" placeholder="请输入套餐编号"
							  v-if="user_group === '管理员' || (form['physical_examination_results_id'] && $check_field('set','package_number')) || (!form['physical_examination_results_id'] && $check_field('add','package_number'))" :disabled="disabledObj['package_number_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','package_number')">{{form['package_number']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','package_name') || $check_field('add','package_name') || $check_field('set','package_name')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="套餐名称" prop="package_name">
					<el-input id="package_name" v-model="form['package_name']" placeholder="请输入套餐名称"
							  v-if="user_group === '管理员' || (form['physical_examination_results_id'] && $check_field('set','package_name')) || (!form['physical_examination_results_id'] && $check_field('add','package_name'))" :disabled="disabledObj['package_name_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','package_name')">{{form['package_name']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','user_name') || $check_field('add','user_name') || $check_field('set','user_name')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="用户名" prop="user_name">
						<el-select v-if="user_group === '管理员' || (form['physical_examination_results_id'] && $check_field('set','user_name')) || (!form['physical_examination_results_id'] && $check_field('add','user_name'))" id="user_name" v-model="form['user_name']" :disabled="disabledObj['user_name_isDisabled']">
							<el-option v-for="o in list_user_user_name" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
									   :value="o['user_id']">
							</el-option>
						</el-select>
						<el-select v-else-if="$check_field('get','user_name')" id="user_name" v-model="form['user_name']" :disabled="true">
							<el-option v-for="o in list_user_user_name" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
									   :value="o['user_id']">
							</el-option>
						</el-select>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','report') || $check_field('add','report') || $check_field('set','report')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="报告" prop="report">
					<div v-if="disabledObj['report_isDisabled']">
						<div v-if="$check_field('get','report')">
							<el-button type="primary" @click="$download($fullUrl(form['report']),form['report'])">下载<i
									class="el-icon-download el-icon--right"></i></el-button>
						</div>
					</div>
					<div v-else>
						<el-upload v-if="user_group === '管理员' || (form['physical_examination_results_id'] && $check_field('set','report')) || (!form['physical_examination_results_id'] && $check_field('add','report'))" class="upload-demo" drag
								   action="" style="max-width: 300px;width: 100%;" :http-request="upload_report" :limit="1" accept="">
							<i class="el-icon-upload"></i>
							<div class="el-upload__text">将文件拖到此处，或<em>点击上传</em></div>
						</el-upload>
						<div v-else-if="$check_field('get','report')">
							<el-button type="primary" @click="$download($fullUrl(form['report']),form['report'])">下载<i
									class="el-icon-download el-icon--right"></i></el-button>
						</div>
					</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','result_analysis') || $check_field('add','result_analysis') || $check_field('set','result_analysis')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="结果分析" prop="result_analysis">
					<el-input type="textarea" id="result_analysis" v-model="form['result_analysis']" placeholder="请输入结果分析"
						v-if="user_group === '管理员' || (form['physical_examination_results_id'] && $check_field('set','result_analysis')) || (!form['physical_examination_results_id'] && $check_field('add','result_analysis'))" :disabled="disabledObj['result_analysis_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','result_analysis')">{{form['result_analysis']}}</div>
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
				field: "physical_examination_results_id",
				url_add: "~/api/physical_examination_results/add?",
				url_set: "~/api/physical_examination_results/set?",
				url_get_obj: "~/api/physical_examination_results/get_obj?",
				url_upload: "~/api/physical_examination_results/upload?",

				query: {
					"physical_examination_results_id": 0,
				},

				form: {
					"order_number":'', // 订单号
					"package_number":'', // 套餐编号
					"package_name":'', // 套餐名称
					"user_name": 0, // 用户名
					"report":'', // 报告
					"result_analysis":'', // 结果分析
					"physical_examination_results_id": 0, // ID

				},
				disabledObj:{
					"order_number_isDisabled": false,
					"package_number_isDisabled": false,
					"package_name_isDisabled": false,
					"user_name_isDisabled": false,
					"report_isDisabled": false,
					"result_analysis_isDisabled": false,
				},
				// 用户列表
				list_user_user_name: [],

			}
		},
		methods: {
			/**
			 * 获取注册用户用户列表
			 */
			async get_list_user_user_name() {
                // if(this.user_group !== "管理员" && this.form["user_name"] === 0) {
                //     this.form["user_name"] = this.user.user_id;
                // }
                var json = await this.$get("~/api/user/get_list?user_group=注册用户");
                if(json.result && json.result.list){
                    this.list_user_user_name = json.result.list;
                }
                else if(json.error){
                    console.error(json.error);
                }
			},
			get_user_user_name(id){
				var obj = this.list_user_user_name.getObj({"user_id":id});
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
			 * 上传报告
			 * @param {Object} param文件参数
			 */
			upload_report(param){
				this.uploadFile(param.file, "report");
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
						case "用户名":
							if(param["user_name"] > 0){
								param["user_name"] = this.user.user_id;
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
				$.db.del("form");
				return param;
			},

			/**
			 * 获取对象之后
			 * @param {Object} json
			 * @param {Object} func
			 */
			get_obj_after(json, func){

			},

			is_view(){
				var bl = this.user_group == "管理员";

				if(!bl){
					bl = this.$check_action('/physical_examination_results/table','add');
					console.log(bl ? "你有表格添加权限视作有添加权限" : "你没有表格添加权限");
				}
				if(!bl){
					bl = this.$check_action('/physical_examination_results/table','set');
					console.log(bl ? "你有表格添加权限视作有修改权限" : "你没有表格修改权限");
				}
				if(!bl){
					bl = this.$check_action('/physical_examination_results/view','add');
					console.log(bl ? "你有视图添加权限视作有添加权限" : "你没有视图添加权限");
				}
				if(!bl){
					bl = this.$check_action('/physical_examination_results/view','set');
					console.log(bl ? "你有视图修改权限视作有修改权限" : "你没有视图修改权限");
				}
				if(!bl){
					bl = this.$check_action('/physical_examination_results/view','get');
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
			this.get_list_user_user_name();
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
