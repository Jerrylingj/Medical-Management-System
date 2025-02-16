<template>
	<el-main class="bg">
		<el-form ref="form" :model="form" status-icon label-width="120px" v-if="is_view()">
			<el-col v-if="user_group === '管理员' || $check_field('get','order_number') || $check_field('add','order_number') || $check_field('set','order_number')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="订单号" prop="order_number">
					<el-input id="order_number" v-model="form['order_number']" placeholder="请输入订单号"
							  v-if="user_group === '管理员' || (form['physical_examination_appointment_id'] && $check_field('set','order_number')) || (!form['physical_examination_appointment_id'] && $check_field('add','order_number'))" :disabled="true"></el-input>
					<div v-else-if="$check_field('get','order_number')">{{form['order_number']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','package_number') || $check_field('add','package_number') || $check_field('set','package_number')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="套餐编号" prop="package_number">
					<el-input id="package_number" v-model="form['package_number']" placeholder="请输入套餐编号"
							  v-if="user_group === '管理员' || (form['physical_examination_appointment_id'] && $check_field('set','package_number')) || (!form['physical_examination_appointment_id'] && $check_field('add','package_number'))" :disabled="disabledObj['package_number_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','package_number')">{{form['package_number']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','package_name') || $check_field('add','package_name') || $check_field('set','package_name')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="套餐名称" prop="package_name">
					<el-input id="package_name" v-model="form['package_name']" placeholder="请输入套餐名称"
							  v-if="user_group === '管理员' || (form['physical_examination_appointment_id'] && $check_field('set','package_name')) || (!form['physical_examination_appointment_id'] && $check_field('add','package_name'))" :disabled="disabledObj['package_name_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','package_name')">{{form['package_name']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','price') || $check_field('add','price') || $check_field('set','price')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="价格" prop="price">
					<el-input id="price" v-model="form['price']" placeholder="请输入价格"
							  v-if="user_group === '管理员' || (form['physical_examination_appointment_id'] && $check_field('set','price')) || (!form['physical_examination_appointment_id'] && $check_field('add','price'))" :disabled="disabledObj['price_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','price')">{{form['price']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','number_of_appointments') || $check_field('add','number_of_appointments') || $check_field('set','number_of_appointments')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="预约人数" prop="number_of_appointments">
					<el-input-number id="number_of_appointments" v-model.number="form['number_of_appointments']"
						v-if="user_group === '管理员' || (form['physical_examination_appointment_id'] && $check_field('set','number_of_appointments')) || (!form['physical_examination_appointment_id'] && $check_field('add','number_of_appointments'))"></el-input-number>
					<div v-else-if="$check_field('get','number_of_appointments')">{{form['number_of_appointments']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','total_price') || $check_field('add','total_price') || $check_field('set','total_price')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="总价格" prop="total_price">
					<el-input id="total_price" v-model="form['total_price']" placeholder="请输入总价格"
							  v-if="user_group === '管理员' || (form['physical_examination_appointment_id'] && $check_field('set','total_price')) || (!form['physical_examination_appointment_id'] && $check_field('add','total_price'))"  @focus="set_total_price()" :disabled="disabledObj['total_price_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','total_price')">{{form['total_price']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','user_name') || $check_field('add','user_name') || $check_field('set','user_name')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="用户名" prop="user_name">
						<div v-if="user_group !== '管理员'">
							{{ get_user_session_user_name(form['user_name']) }}
							<!--<el-input id="business_name" v-model="form['user_name']" placeholder="请输入用户名"-->
							<!--v-if="user_group === '管理员' || (form['physical_examination_appointment_id'] && $check_field('set','user_name')) || (!form['physical_examination_appointment_id'] && $check_field('add','user_name'))" :disabled="disabledObj['user_name_isDisabled']"></el-input>-->
							<!--<div v-else-if="$check_field('get','user_name')">{{form['user_name']}}</div>-->
							<el-select v-if="user_group === '管理员' || (form['physical_examination_appointment_id'] && $check_field('set','user_name')) || (!form['physical_examination_appointment_id'] && $check_field('add','user_name'))" id="user_name" v-model="form['user_name']" :disabled="disabledObj['user_name_isDisabled']">
								<el-option v-for="o in list_user_user_name" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
										   :value="o['user_id']">
								</el-option>
							</el-select>
							<el-select v-else-if="$check_field('get','user_name')" id="user_name" v-model="form['user_name']" :disabled="true">
								<el-option v-for="o in list_user_user_name" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
										   :value="o['user_id']">
								</el-option>
							</el-select>
						</div>
						<el-select v-else id="user_name" v-model="form['user_name']" :disabled="disabledObj['user_name_isDisabled']">
							<el-option v-for="o in list_user_user_name" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
									   :value="o['user_id']">
							</el-option>
						</el-select>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','contact_number') || $check_field('add','contact_number') || $check_field('set','contact_number')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="联系电话" prop="contact_number">
					<el-input id="contact_number" v-model="form['contact_number']" placeholder="请输入联系电话"
							  v-if="user_group === '管理员' || (form['physical_examination_appointment_id'] && $check_field('set','contact_number')) || (!form['physical_examination_appointment_id'] && $check_field('add','contact_number'))" :disabled="disabledObj['contact_number_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','contact_number')">{{form['contact_number']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','appointment_date_of_physical_examination') || $check_field('add','appointment_date_of_physical_examination') || $check_field('set','appointment_date_of_physical_examination')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="预约体检日期" prop="appointment_date_of_physical_examination">
					<el-date-picker :disabled="disabledObj['appointment_date_of_physical_examination_isDisabled']" v-if="user_group === '管理员' || (form['physical_examination_appointment_id'] && $check_field('set','appointment_date_of_physical_examination')) || (!form['physical_examination_appointment_id'] && $check_field('add','appointment_date_of_physical_examination'))" id="appointment_date_of_physical_examination"
						v-model="form['appointment_date_of_physical_examination']" type="date" placeholder="选择日期">
					</el-date-picker>
					<div v-else-if="$check_field('get','appointment_date_of_physical_examination')">{{form['appointment_date_of_physical_examination']}}</div>
				</el-form-item>
			</el-col>
			<el-col :xs="24" :sm="12" :lg="8">
				<el-form-item label="审核状态" prop="examine_state">
					<el-select id="examine_state" v-model="form['examine_state']"
						v-if="user_group === '管理员' || (form['examine_state'] && $check_examine()) || (!form['examine_state'] && $check_examine())">
						<el-option key="未审核" label="未审核" value="未审核"></el-option>
						<el-option key="已通过" label="已通过" value="已通过"></el-option>
						<el-option key="未通过" label="未通过" value="未通过"></el-option>
					</el-select>
					<div v-else-if="$check_field('get','examine_state')">{{form["examine_state"]}}</div>
				</el-form-item>
			</el-col>
			<el-col :xs="24" :sm="12" :lg="8">
				<el-form-item label="审核回复" prop="examine_reply">
					<el-input id="examine_reply" v-model="form['examine_reply']" placeholder="请输入审核回复"
						v-if="user_group === '管理员' || (form['examine_reply'] && $check_examine()) || (!form['examine_reply'] && $check_examine())"></el-input>
					<div v-else-if="$check_field('get','examine_reply')">{{form["examine_reply"]}}</div>
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
				field: "physical_examination_appointment_id",
				url_add: "~/api/physical_examination_appointment/add?",
				url_set: "~/api/physical_examination_appointment/set?",
				url_get_obj: "~/api/physical_examination_appointment/get_obj?",
				url_upload: "~/api/physical_examination_appointment/upload?",

				query: {
					"physical_examination_appointment_id": 0,
				},

				form: {
					"order_number":this.$get_stamp(), // 订单号
					"package_number":'', // 套餐编号
					"package_name":'', // 套餐名称
					"price":'', // 价格
					"number_of_appointments":0, // 预约人数
					"total_price":'', // 总价格
					"user_name": 0, // 用户名
					"contact_number":'', // 联系电话
					"appointment_date_of_physical_examination":'', // 预约体检日期
					"examine_state": "未审核",
					"examine_reply": "",
					"physical_examination_appointment_id": 0, // ID

				},
				disabledObj:{
					"order_number_isDisabled": false,
					"package_number_isDisabled": false,
					"package_name_isDisabled": false,
					"price_isDisabled": false,
					"total_price_isDisabled": false,
					"user_name_isDisabled": false,
					"contact_number_isDisabled": false,
					"appointment_date_of_physical_examination_isDisabled": false,
				},
				// 用户列表
				list_user_user_name: [],
				// 用户组
				group_user_user_name: "",

			}
		},
		methods: {
			set_total_price(){
				this.form.total_price =this.form.price * this.form.number_of_appointments
			},
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
			/**
			 * 获取注册用户用户组
			 */
			async get_group_user_user_name() {
				this.form["user_name"] = this.user.user_id;
				var json = await this.$get("~/api/user_group/get_obj?name=注册用户");
				if(json.result && json.result.obj){
					this.group_user_user_name = json.result.obj;
				}
				else if(json.error){
					console.error(json.error);
				}
			},
			get_user_session_user_name(id){
				var _this = this;
				var user_id = {"user_id":id}
				var url = "~/api/"+_this.group_user_user_name.source_table+"/get_obj?"
				this.$get(url, user_id, function(res) {
					if (res.result && res.result.obj) {
						var arr = []
						for (let key in res.result.obj) {
							arr.push(key)
						}
						var arrForm = []
						for (let key in _this.form) {
							arrForm.push(key)
						}
						for (var i=0;i<arr.length;i++){
							for (var j=0;j<arrForm.length;j++){
								if (arr[i]===arrForm[j]){
									if (arr[i]!=="user_name") {
										_this.form[arrForm[j]] = res.result.obj[arr[i]]
										_this.disabledObj[arrForm[j] + '_isDisabled'] = true
										break;
									}else {
										_this.disabledObj[arrForm[j] + '_isDisabled'] = true
									}
								}
							}
						}
					}
				});
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
        if (this.form["appointment_date_of_physical_examination"].indexOf("-")===-1){
          this.form["appointment_date_of_physical_examination"] = this.$toTime(parseInt(this.form["appointment_date_of_physical_examination"]),"yyyy-MM-dd")
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
				if(parseInt(this.form["appointment_date_of_physical_examination"]) > 9999){
					this.form["appointment_date_of_physical_examination"] = this.$toTime(parseInt(this.form["appointment_date_of_physical_examination"]),"yyyy-MM-dd")
				}

			},

			is_view(){
				var bl = this.user_group == "管理员";

				if(!bl){
					bl = this.$check_action('/physical_examination_appointment/table','add');
					console.log(bl ? "你有表格添加权限视作有添加权限" : "你没有表格添加权限");
				}
				if(!bl){
					bl = this.$check_action('/physical_examination_appointment/table','set');
					console.log(bl ? "你有表格添加权限视作有修改权限" : "你没有表格修改权限");
				}
				if(!bl){
					bl = this.$check_action('/physical_examination_appointment/view','add');
					console.log(bl ? "你有视图添加权限视作有添加权限" : "你没有视图添加权限");
				}
				if(!bl){
					bl = this.$check_action('/physical_examination_appointment/view','set');
					console.log(bl ? "你有视图修改权限视作有修改权限" : "你没有视图修改权限");
				}
				if(!bl){
					bl = this.$check_action('/physical_examination_appointment/view','get');
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
			this.get_group_user_user_name();
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
