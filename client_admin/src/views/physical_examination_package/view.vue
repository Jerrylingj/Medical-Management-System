<template>
	<el-main class="bg">
		<el-form ref="form" :model="form" status-icon label-width="120px" v-if="is_view()">
			<el-col v-if="user_group === '管理员' || $check_field('get','package_number') || $check_field('add','package_number') || $check_field('set','package_number')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="套餐编号" prop="package_number">
					<el-input id="package_number" v-model="form['package_number']" placeholder="请输入套餐编号"
							  v-if="user_group === '管理员' || (form['physical_examination_package_id'] && $check_field('set','package_number')) || (!form['physical_examination_package_id'] && $check_field('add','package_number'))" :disabled="disabledObj['package_number_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','package_number')">{{form['package_number']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','package_name') || $check_field('add','package_name') || $check_field('set','package_name')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="套餐名称" prop="package_name">
					<el-input id="package_name" v-model="form['package_name']" placeholder="请输入套餐名称"
							  v-if="user_group === '管理员' || (form['physical_examination_package_id'] && $check_field('set','package_name')) || (!form['physical_examination_package_id'] && $check_field('add','package_name'))" :disabled="disabledObj['package_name_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','package_name')">{{form['package_name']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','cover') || $check_field('add','cover') || $check_field('set','cover')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="封面" prop="cover">
					<el-upload :disabled="disabledObj['cover_isDisabled']" id="cover" class="avatar-uploader" drag
						accept="image/gif, image/jpeg, image/png, image/jpg" action="" :http-request="upload_cover"
						:show-file-list="false" v-if="user_group === '管理员' || (form['physical_examination_package_id'] && $check_field('set','cover')) || (!form['physical_examination_package_id'] && $check_field('add','cover'))">
						<img v-if="form['cover']" :src="$fullUrl(form['cover'])" class="avatar">
						<i v-else class="el-icon-plus avatar-uploader-icon"></i>
					</el-upload>
					<el-image v-else-if="$check_field('get','cover')" style="width: 100px; height: 100px"
						:src="$fullUrl(form['cover'])" :preview-src-list="[$fullUrl(form['cover'])]">
						<div slot="error" class="image-slot">
							<img src="../../../public/img/error.png" style="width: 90px; height: 90px" />
						</div>
					</el-image>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','price') || $check_field('add','price') || $check_field('set','price')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="价格" prop="price">
					<el-input-number id="price" v-model.number="form['price']"
						v-if="user_group === '管理员' || (form['physical_examination_package_id'] && $check_field('set','price')) || (!form['physical_examination_package_id'] && $check_field('add','price'))"></el-input-number>
					<div v-else-if="$check_field('get','price')">{{form['price']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','test_item') || $check_field('add','test_item') || $check_field('set','test_item')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="检测项" prop="test_item">
					<el-input type="textarea" id="test_item" v-model="form['test_item']" placeholder="请输入检测项"
						v-if="user_group === '管理员' || (form['physical_examination_package_id'] && $check_field('set','test_item')) || (!form['physical_examination_package_id'] && $check_field('add','test_item'))" :disabled="disabledObj['test_item_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','test_item')">{{form['test_item']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','matters_needing_attention') || $check_field('add','matters_needing_attention') || $check_field('set','matters_needing_attention')" :xs="24" :sm="12" :lg="8">
				<el-form-item label="注意事项" prop="matters_needing_attention">
					<el-input type="textarea" id="matters_needing_attention" v-model="form['matters_needing_attention']" placeholder="请输入注意事项"
						v-if="user_group === '管理员' || (form['physical_examination_package_id'] && $check_field('set','matters_needing_attention')) || (!form['physical_examination_package_id'] && $check_field('add','matters_needing_attention'))" :disabled="disabledObj['matters_needing_attention_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','matters_needing_attention')">{{form['matters_needing_attention']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','details') || $check_field('add','details') || $check_field('set','details')" :xs="24" :sm="24" :lg="24">
				<el-form-item label="详情" prop="details">
					<quill-editor v-model.number="form['details']"
						v-if="user_group === '管理员' || (form['physical_examination_package_id'] && $check_field('set','details')) || (!form['physical_examination_package_id'] && $check_field('add','details')) ">
					</quill-editor>
					<div v-else-if="$check_field('get','details')" v-html="form['details']"></div>
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
				field: "physical_examination_package_id",
				url_add: "~/api/physical_examination_package/add?",
				url_set: "~/api/physical_examination_package/set?",
				url_get_obj: "~/api/physical_examination_package/get_obj?",
				url_upload: "~/api/physical_examination_package/upload?",

				query: {
					"physical_examination_package_id": 0,
				},

				form: {
					"package_number":'', // 套餐编号
					"package_name":'', // 套餐名称
					"cover":'', // 封面
					"price":0, // 价格
					"test_item":'', // 检测项
					"matters_needing_attention":'', // 注意事项
					"details":'', // 详情
					"physical_examination_package_id": 0, // ID

				},
				disabledObj:{
					"package_number_isDisabled": false,
					"package_name_isDisabled": false,
					"cover_isDisabled": false,
					"test_item_isDisabled": false,
					"matters_needing_attention_isDisabled": false,
					"details_isDisabled": false,
				},

			}
		},
		methods: {
			/**
			 * 上传封面
			 * @param {Object} param图片参数
			 */
			upload_cover(param){
				this.uploadFile(param.file, "cover");
			},

			/**
			 * 获取对象之前
			 * @param {Object} param
			 */
			get_obj_before(param) {
				var form = "";
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
					bl = this.$check_action('/physical_examination_package/table','add');
					console.log(bl ? "你有表格添加权限视作有添加权限" : "你没有表格添加权限");
				}
				if(!bl){
					bl = this.$check_action('/physical_examination_package/table','set');
					console.log(bl ? "你有表格添加权限视作有修改权限" : "你没有表格修改权限");
				}
				if(!bl){
					bl = this.$check_action('/physical_examination_package/view','add');
					console.log(bl ? "你有视图添加权限视作有添加权限" : "你没有视图添加权限");
				}
				if(!bl){
					bl = this.$check_action('/physical_examination_package/view','set');
					console.log(bl ? "你有视图修改权限视作有修改权限" : "你没有视图修改权限");
				}
				if(!bl){
					bl = this.$check_action('/physical_examination_package/view','get');
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
