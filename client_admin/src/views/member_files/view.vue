<template>
	<el-main class="bg">
		<el-form ref="form" :model="form" status-icon label-width="120px" v-if="is_view()">
			<el-col v-if="user_group === '管理员' || $check_field('get','user') || $check_field('add','user') || $check_field('set','user')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="用户" prop="user">
						<el-select v-if="user_group === '管理员' || (form['member_files_id'] && $check_field('set','user')) || (!form['member_files_id'] && $check_field('add','user'))" id="user" v-model="form['user']" :disabled="disabledObj['user_isDisabled']">
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
							  v-if="user_group === '管理员' || (form['member_files_id'] && $check_field('set','full_name')) || (!form['member_files_id'] && $check_field('add','full_name'))" :disabled="disabledObj['full_name_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','full_name')">{{form['full_name']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','gender') || $check_field('add','gender') || $check_field('set','gender')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="性别" prop="gender">
					<el-select id="gender" v-model="form['gender']"
						v-if="user_group === '管理员' || (form['member_files_id'] && $check_field('set','gender')) || (!form['member_files_id'] && $check_field('add','gender'))">
						<el-option v-for="o in list_gender" :key="o" :label="o" :value="o">
						</el-option>
					</el-select>
					<div v-else-if="$check_field('get','gender')">{{form['gender']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','date_of_birth') || $check_field('add','date_of_birth') || $check_field('set','date_of_birth')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="出生日期" prop="date_of_birth">
					<el-date-picker :disabled="disabledObj['date_of_birth_isDisabled']" v-if="user_group === '管理员' || (form['member_files_id'] && $check_field('set','date_of_birth')) || (!form['member_files_id'] && $check_field('add','date_of_birth'))" id="date_of_birth"
						v-model="form['date_of_birth']" type="date" placeholder="选择日期">
					</el-date-picker>
					<div v-else-if="$check_field('get','date_of_birth')">{{form['date_of_birth']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','height') || $check_field('add','height') || $check_field('set','height')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="身高" prop="height">
					<el-input id="height" v-model="form['height']" placeholder="请输入身高"
							  v-if="user_group === '管理员' || (form['member_files_id'] && $check_field('set','height')) || (!form['member_files_id'] && $check_field('add','height'))" :disabled="disabledObj['height_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','height')">{{form['height']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','weight') || $check_field('add','weight') || $check_field('set','weight')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="体重" prop="weight">
					<el-input id="weight" v-model="form['weight']" placeholder="请输入体重"
							  v-if="user_group === '管理员' || (form['member_files_id'] && $check_field('set','weight')) || (!form['member_files_id'] && $check_field('add','weight'))" :disabled="disabledObj['weight_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','weight')">{{form['weight']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','genetic_history') || $check_field('add','genetic_history') || $check_field('set','genetic_history')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="遗传病史" prop="genetic_history">
					<el-input type="textarea" id="genetic_history" v-model="form['genetic_history']" placeholder="请输入遗传病史"
						v-if="user_group === '管理员' || (form['member_files_id'] && $check_field('set','genetic_history')) || (!form['member_files_id'] && $check_field('add','genetic_history'))" :disabled="disabledObj['genetic_history_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','genetic_history')">{{form['genetic_history']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','disease_history') || $check_field('add','disease_history') || $check_field('set','disease_history')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="疾病史" prop="disease_history">
					<el-input type="textarea" id="disease_history" v-model="form['disease_history']" placeholder="请输入疾病史"
						v-if="user_group === '管理员' || (form['member_files_id'] && $check_field('set','disease_history')) || (!form['member_files_id'] && $check_field('add','disease_history'))" :disabled="disabledObj['disease_history_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','disease_history')">{{form['disease_history']}}</div>
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
				field: "member_files_id",
				url_add: "~/api/member_files/add?",
				url_set: "~/api/member_files/set?",
				url_get_obj: "~/api/member_files/get_obj?",
				url_upload: "~/api/member_files/upload?",

				query: {
					"member_files_id": 0,
				},

				form: {
					"user": 0, // 用户
					"full_name":'', // 姓名
					"gender":'', // 性别
					"date_of_birth":'', // 出生日期
					"height":'', // 身高
					"weight":'', // 体重
					"genetic_history":'', // 遗传病史
					"disease_history":'', // 疾病史
					"member_files_id": 0, // ID

				},
				disabledObj:{
					"user_isDisabled": false,
					"full_name_isDisabled": false,
					"gender_isDisabled": false,
					"date_of_birth_isDisabled": false,
					"height_isDisabled": false,
					"weight_isDisabled": false,
					"genetic_history_isDisabled": false,
					"disease_history_isDisabled": false,
				},
				// 用户列表
				list_user_user: [],
				//性别选项列表
				list_gender: ['男','女'],

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
			 * 获取对象之前
			 * @param {Object} param
			 */
			get_obj_before(param) {
				var form = "";
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
        if (this.form["date_of_birth"].indexOf("-")===-1){
          this.form["date_of_birth"] = this.$toTime(parseInt(this.form["date_of_birth"]),"yyyy-MM-dd")
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
				if(parseInt(this.form["date_of_birth"]) > 9999){
					this.form["date_of_birth"] = this.$toTime(parseInt(this.form["date_of_birth"]),"yyyy-MM-dd")
				}

			},

			is_view(){
				var bl = this.user_group == "管理员";

				if(!bl){
					bl = this.$check_action('/member_files/table','add');
					console.log(bl ? "你有表格添加权限视作有添加权限" : "你没有表格添加权限");
				}
				if(!bl){
					bl = this.$check_action('/member_files/table','set');
					console.log(bl ? "你有表格添加权限视作有修改权限" : "你没有表格修改权限");
				}
				if(!bl){
					bl = this.$check_action('/member_files/view','add');
					console.log(bl ? "你有视图添加权限视作有添加权限" : "你没有视图添加权限");
				}
				if(!bl){
					bl = this.$check_action('/member_files/view','set');
					console.log(bl ? "你有视图修改权限视作有修改权限" : "你没有视图修改权限");
				}
				if(!bl){
					bl = this.$check_action('/member_files/view','get');
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
