<template>
	<div class="diy_edit page_physical_examination_appointment" id="physical_examination_appointment_edit">
		<div class='warp'>
			<div class='container'>
				<div class='row diy_edit_content_box'>
					<div v-if="$check_field('set','order_number') || $check_field('add','order_number') || $check_field('get','order_number')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>订单号:
							</span>
						</div>
						<!-- 文本 -->
						<div class="diy_field diy_text">
							<input type="text" id="form_order_number" v-model="form['order_number']" placeholder="请输入订单号" v-if="(form['order_number'] && $check_field('set','order_number')) || (!form['order_number'] && $check_field('add','order_number'))" :disabled="true"/>
							<span v-else-if="$check_field('get','order_number')">{{ form[''] }}</span>
						</div>
					</div>
					<div v-if="$check_field('set','package_number') || $check_field('add','package_number') || $check_field('get','package_number')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>套餐编号:
							</span>
						</div>
						<!-- 文本 -->
						<div class="diy_field diy_text">
							<input type="text" id="form_package_number" v-model="form['package_number']" placeholder="请输入套餐编号" v-if="(form['package_number'] && $check_field('set','package_number')) || (!form['package_number'] && $check_field('add','package_number'))"  :disabled="disabledObj['package_number_isDisabled']"/>
							<span v-else-if="$check_field('get','package_number')">{{ form[''] }}</span>
						</div>
					</div>
					<div v-if="$check_field('set','package_name') || $check_field('add','package_name') || $check_field('get','package_name')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>套餐名称:
							</span>
						</div>
						<!-- 文本 -->
						<div class="diy_field diy_text">
							<input type="text" id="form_package_name" v-model="form['package_name']" placeholder="请输入套餐名称" v-if="(form['package_name'] && $check_field('set','package_name')) || (!form['package_name'] && $check_field('add','package_name'))"  :disabled="disabledObj['package_name_isDisabled']"/>
							<span v-else-if="$check_field('get','package_name')">{{ form[''] }}</span>
						</div>
					</div>
					<div v-if="$check_field('set','price') || $check_field('add','price') || $check_field('get','price')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>价格:
							</span>
						</div>
						<!-- 文本 -->
						<div class="diy_field diy_text">
							<input type="text" id="form_price" v-model="form['price']" placeholder="请输入价格" v-if="(form['price'] && $check_field('set','price')) || (!form['price'] && $check_field('add','price'))"  :disabled="disabledObj['price_isDisabled']"/>
							<span v-else-if="$check_field('get','price')">{{ form[''] }}</span>
						</div>
					</div>
					<div v-if="$check_field('set','number_of_appointments') || $check_field('add','number_of_appointments') || $check_field('get','number_of_appointments')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>预约人数:
							</span>
						</div>
						<!-- 数字 -->
						<div class="diy_field diy_number">
							<input type="number" id="form_number_of_appointments" v-model.number="form['number_of_appointments']" placeholder="请输入预约人数" v-if="(form['number_of_appointments'] && $check_field('set','number_of_appointments')) || (!form['number_of_appointments'] && $check_field('add','number_of_appointments'))" :disabled="disabledObj['number_of_appointments_isDisabled']" />
							<span v-else-if="$check_field('get','number_of_appointments')">{{ form[''] }}</span>
						</div>
					</div>
					<div v-if="$check_field('set','total_price') || $check_field('add','total_price') || $check_field('get','total_price')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>总价格:
							</span>
						</div>
						<!-- 文本 -->
						<div class="diy_field diy_text">
							<input type="text" id="form_total_price" v-model="form['total_price']" placeholder="请输入总价格" v-if="(form['total_price'] && $check_field('set','total_price')) || (!form['total_price'] && $check_field('add','total_price'))"  @focus="set_total_price()" :disabled="disabledObj['total_price_isDisabled']"/>
							<span v-else-if="$check_field('get','total_price')">{{ form[''] }}</span>
						</div>
					</div>
					<div v-if="$check_field('set','user_name') || $check_field('add','user_name') || $check_field('get','user_name')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>用户名:
							</span>
						</div>
						<div class="diy_field diy_down">
							<select id="form_user_name" :disabled="disabledObj['user_name_isDisabled']" v-model="form['user_name']" v-if="(form['user_name'] && $check_field('set','user_name')) || (!form['user_name'] && $check_field('add','user_name'))" >
								<option v-for="o in list_user_user_name" :value="o['user_id']">
									{{o['nickname'] + '-' + o['username']}}
								</option>
							</select>
							<span v-else-if="$check_field('get','user_name')">{{ form['user_name'] }}</span>
						</div>
					</div>
					<div v-if="$check_field('set','contact_number') || $check_field('add','contact_number') || $check_field('get','contact_number')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>联系电话:
							</span>
						</div>
						<!-- 文本 -->
						<div class="diy_field diy_text">
							<input type="text" id="form_contact_number" v-model="form['contact_number']" placeholder="请输入联系电话" v-if="(form['contact_number'] && $check_field('set','contact_number')) || (!form['contact_number'] && $check_field('add','contact_number'))"  :disabled="disabledObj['contact_number_isDisabled']"/>
							<span v-else-if="$check_field('get','contact_number')">{{ form[''] }}</span>
						</div>
					</div>
					<div v-if="$check_field('set','appointment_date_of_physical_examination') || $check_field('add','appointment_date_of_physical_examination') || $check_field('get','appointment_date_of_physical_examination')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>预约体检日期:
							</span>
						</div>
						<!-- 日期 -->
						<div class="diy_field diy_date">
							<input type="date" :disabled="disabledObj['appointment_date_of_physical_examination_isDisabled']" id="form_appointment_date_of_physical_examination" v-model="form['appointment_date_of_physical_examination']" placeholder="请输入预约体检日期" v-if="(form['appointment_date_of_physical_examination'] && $check_field('set','appointment_date_of_physical_examination')) || (!form['appointment_date_of_physical_examination'] && $check_field('add','appointment_date_of_physical_examination'))" />
							<span v-else-if="$check_field('get','appointment_date_of_physical_examination')">{{ form[''] }}</span>
						</div>
					</div>
					<div v-if="user_group === '管理员' || $check_examine()" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>
								审核状态:
							</span>
						</div>
						<div class="diy_field diy_select" v-if="$check_action('/physical_examination_appointment/edit','examine')">
							<!--<span> {{ form['examine_state'] }} </span>-->
							<select v-model="form['examine_state']">
								<option value="未审核">
									未审核
								</option>
								<option value="已通过">
									已通过
								</option>
								<option value="未通过">
									未通过
								</option>
							</select>
						</div>
						<div class="diy_field diy_text" v-else>
							<span>
								{{ form['examine_state'] }}
							</span>
						</div>
					</div>
					<div v-if="user_group === '管理员' || $check_examine()" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>
								审核回复:
							</span>
						</div>
						<div class="diy_field diy_desc" v-if="$check_action('/physical_examination_appointment/edit','examine')">
							<textarea v-model="form['examine_reply']"></textarea>
						</div>
						<div class="diy_field diy_text" v-else>
							<span>
								{{ form['examine_reply'] }}
							</span>
						</div>
					</div>
				</div>
				<div class="diy_edit_submit_box row">
					<div class="col-12">
						<div class="btn_box">
							<button class="btn_submit" @click="submit()">提交</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</template>

<script>
	import mixin from "@/mixins/page.js";
	export default {
		mixins: [mixin],
		components: {},
		data() {
			return {
				url_get_obj: "~/api/physical_examination_appointment/get_obj?",
				url_add: "~/api/physical_examination_appointment/add?",
				url_set: "~/api/physical_examination_appointment/set?",

				// 登录权限
				oauth: {
					"signIn": true,
					"user_group": []
				},

				// 查询条件
				query: {
					"order_number": "",
					"package_number": "",
					"package_name": "",
					"price": "",
					"number_of_appointments": 0,
					"total_price": "",
					"user_name": 0,
					"contact_number": "",
					"appointment_date_of_physical_examination": "",
					"physical_examination_appointment_id": 0,
				},

				obj: {
					"order_number":this.$get_stamp(), // 订单号
					"package_number":'', // 套餐编号
					"package_name":'', // 套餐名称
					"price":'', // 价格
					"number_of_appointments":0, // 预约人数
					"total_price":'', // 总价格
					"user_name": 0, // 用户名
					"contact_number":'', // 联系电话
					"appointment_date_of_physical_examination": "1970-01-01 00:00:00",
					"examine_state": "未审核",
					"examine_reply": "",
					"physical_examination_appointment_id": 0,
				},

				// 表单字段
				form: {
					"order_number":this.$get_stamp(), // 订单号
					"package_number":'', // 套餐编号
					"package_name":'', // 套餐名称
					"price":'', // 价格
					"number_of_appointments":0, // 预约人数
					"total_price":'', // 总价格
					"user_name": 0, // 用户名
					"contact_number":'', // 联系电话
					"appointment_date_of_physical_examination": "1970-01-01 00:00:00",
					"examine_state": "未审核",
					"examine_reply": "",
					"physical_examination_appointment_id": 0,

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

				// ID字段
				field: "physical_examination_appointment_id",
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
			async get_user_session_user_name(){
				var _this = this;
				var json = await this.$get("~/api/user_group/get_obj?name=注册用户");
				if(json.result && json.result.obj){
					var source_table = json.result.obj.source_table;
					var user_id = _this.$store.state.user.user_id;
					if (user_id){
						var url = "~/api/"+source_table+"/get_obj?"
						this.$get(url, {"user_id":_this.$store.state.user.user_id}, function(res) {
							if (res.result && res.result.obj) {
								var arr = []
								for (let key in res.result.obj) {
									arr.push(key)
								}
								var arrForm = []
								for (let key in _this.form) {
									arrForm.push(key)
								}
								_this.form["user_name"] = user_id
								_this.disabledObj['user_name' + '_isDisabled'] = true
								for (var i=0;i<arr.length;i++){
									for (var j=0;j<arrForm.length;j++){
										if (arr[i]===arrForm[j]){
											if (arr[i]!=="user_name") {
												_this.form[arrForm[j]] = res.result.obj[arr[i]]
												_this.disabledObj[arrForm[j] + '_isDisabled'] = true
												break;
											}
										}
									}
								}
							}
						});
					}
				}
				else if(json.error){
					console.error(json.error);
				}
			},

			/**
			 * 修改文件
			 * @param { Object } files 上传文件对象
			 * @param { String } str 表单的属性名
			 */
			change_file(files, str) {
				var form = new FormData();
				form.append("file", files[0]);
				this.$post("~/api/physical_examination_appointment/upload?", form, (res) => {
					if (res.result) {
						this.form[str] = res.result.url;
					} else if (res.error) {
						this.$toast(res.error.message);
					}
				});
			},

			/**
			 * 获取对象后获取缓存表单
			 * @param {Object} json
			 * @param {Object} func
			 */
			get_obj_before(param){
				var form = $.db.get("form");
				if (form) {
					this.obj = $.push(this.obj ,form);
					this.form = $.push(this.form ,form);
				}
				var arr = []
				for (let key in form) {
					arr.push(key)
				}
				for (var i=0;i<arr.length;i++){
					this.disabledObj[arr[i] + '_isDisabled'] = true
				}
				this.form["appointment_date_of_physical_examination"] = this.$toTime(parseInt(this.form["appointment_date_of_physical_examination"]),"yyyy-MM-dd")
				return param;
			},

			/**
			 * 获取对象后获取缓存表单
			 * @param {Object} json
			 * @param {Object} func
			 */
			get_obj_after(json ,func){
				var form = $.db.get("form");
				var obj = Object.assign({} ,form ,this.obj);
				if (form) {
					this.obj = $.push(this.obj ,obj);
				}
				if (form) {
					this.form = $.push(this.form ,form);
				}
				if(func){
					func(json);
				}
			},

		},
		created() {
			this.get_user_session_user_name();
			this.get_list_user_user_name();
		}
	}
</script>

<style>
</style>
