<template>
	<el-main class="bg">
		<el-form ref="form" :model="form" status-icon label-width="120px" v-if="is_view()">
			<el-col v-if="user_group === '管理员' || $check_field('get','user_name') || $check_field('add','user_name') || $check_field('set','user_name')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="用户名" prop="user_name">
						<el-select v-if="user_group === '管理员' || (form['health_intervention_id'] && $check_field('set','user_name')) || (!form['health_intervention_id'] && $check_field('add','user_name'))" id="user_name" v-model="form['user_name']" :disabled="disabledObj['user_name_isDisabled']">
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
			<el-col v-if="user_group === '管理员' || $check_field('get','population_category') || $check_field('add','population_category') || $check_field('set','population_category')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="人群类别" prop="population_category">
					<el-select id="population_category" v-model="form['population_category']"
						v-if="user_group === '管理员' || (form['health_intervention_id'] && $check_field('set','population_category')) || (!form['health_intervention_id'] && $check_field('add','population_category'))">
						<el-option v-for="o in list_population_category" :key="o" :label="o" :value="o">
						</el-option>
					</el-select>
					<div v-else-if="$check_field('get','population_category')">{{form['population_category']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','intervention_cycle') || $check_field('add','intervention_cycle') || $check_field('set','intervention_cycle')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="干预周期" prop="intervention_cycle">
					<el-input id="intervention_cycle" v-model="form['intervention_cycle']" placeholder="请输入干预周期"
							  v-if="user_group === '管理员' || (form['health_intervention_id'] && $check_field('set','intervention_cycle')) || (!form['health_intervention_id'] && $check_field('add','intervention_cycle'))" :disabled="disabledObj['intervention_cycle_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','intervention_cycle')">{{form['intervention_cycle']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','abnormal_index') || $check_field('add','abnormal_index') || $check_field('set','abnormal_index')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="异常指标" prop="abnormal_index">
					<el-input type="textarea" id="abnormal_index" v-model="form['abnormal_index']" placeholder="请输入异常指标"
						v-if="user_group === '管理员' || (form['health_intervention_id'] && $check_field('set','abnormal_index')) || (!form['health_intervention_id'] && $check_field('add','abnormal_index'))" :disabled="disabledObj['abnormal_index_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','abnormal_index')">{{form['abnormal_index']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','intervention_program') || $check_field('add','intervention_program') || $check_field('set','intervention_program')" :xs="24" :sm="24" :lg="24">
				<el-form-item label="干预方案" prop="intervention_program">
					<quill-editor v-model.number="form['intervention_program']"
						v-if="user_group === '管理员' || (form['health_intervention_id'] && $check_field('set','intervention_program')) || (!form['health_intervention_id'] && $check_field('add','intervention_program')) ">
					</quill-editor>
					<div v-else-if="$check_field('get','intervention_program')" v-html="form['intervention_program']"></div>
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
				field: "health_intervention_id",
				url_add: "~/api/health_intervention/add?",
				url_set: "~/api/health_intervention/set?",
				url_get_obj: "~/api/health_intervention/get_obj?",
				url_upload: "~/api/health_intervention/upload?",

				query: {
					"health_intervention_id": 0,
				},

				form: {
					"user_name": 0, // 用户名
					"population_category":'', // 人群类别
					"intervention_cycle":'', // 干预周期
					"abnormal_index":'', // 异常指标
					"intervention_program":'', // 干预方案
					"health_intervention_id": 0, // ID

				},
				disabledObj:{
					"user_name_isDisabled": false,
					"population_category_isDisabled": false,
					"intervention_cycle_isDisabled": false,
					"abnormal_index_isDisabled": false,
					"intervention_program_isDisabled": false,
				},
				// 用户列表
				list_user_user_name: [],
				//人群类别选项列表
				list_population_category: ['亚健康','高危人群','其他'],

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
					bl = this.$check_action('/health_intervention/table','add');
					console.log(bl ? "你有表格添加权限视作有添加权限" : "你没有表格添加权限");
				}
				if(!bl){
					bl = this.$check_action('/health_intervention/table','set');
					console.log(bl ? "你有表格添加权限视作有修改权限" : "你没有表格修改权限");
				}
				if(!bl){
					bl = this.$check_action('/health_intervention/view','add');
					console.log(bl ? "你有视图添加权限视作有添加权限" : "你没有视图添加权限");
				}
				if(!bl){
					bl = this.$check_action('/health_intervention/view','set');
					console.log(bl ? "你有视图修改权限视作有修改权限" : "你没有视图修改权限");
				}
				if(!bl){
					bl = this.$check_action('/health_intervention/view','get');
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
