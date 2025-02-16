<template>
  <div class="page_search">
	<div class="warp">
	  <div class="container">
		<div class="row">
		  <div class="col-12">
			<div class="card_result_search">
			  <div class="title">搜索结果</div>
				<!-- 文章搜索结果 -->
			  <list_result_search
				:list="result_article"
				title="知识库"
				source_table="article"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/registered_user/list', 'get')"
				:list="result_registered_user_user_name"
				title="注册用户用户名"
				source_table="registered_user"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/member_files/list', 'get')"
				:list="result_member_files_full_name"
				title="会员档案姓名"
				source_table="member_files"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/health_assessment/list', 'get')"
				:list="result_health_assessment_full_name"
				title="健康评估姓名"
				source_table="health_assessment"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/health_assessment/list', 'get')"
				:list="result_health_assessment_evaluation_type"
				title="健康评估评估类型"
				source_table="health_assessment"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/physical_examination_package/list', 'get')"
				:list="result_physical_examination_package_package_number"
				title="体检套餐套餐编号"
				source_table="physical_examination_package"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/physical_examination_package/list', 'get')"
				:list="result_physical_examination_package_package_name"
				title="体检套餐套餐名称"
				source_table="physical_examination_package"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/physical_examination_appointment/list', 'get')"
				:list="result_physical_examination_appointment_order_number"
				title="体检预约订单号"
				source_table="physical_examination_appointment"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/physical_examination_appointment/list', 'get')"
				:list="result_physical_examination_appointment_package_number"
				title="体检预约套餐编号"
				source_table="physical_examination_appointment"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/physical_examination_appointment/list', 'get')"
				:list="result_physical_examination_appointment_package_name"
				title="体检预约套餐名称"
				source_table="physical_examination_appointment"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/physical_examination_results/list', 'get')"
				:list="result_physical_examination_results_order_number"
				title="体检结果订单号"
				source_table="physical_examination_results"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/physical_examination_results/list', 'get')"
				:list="result_physical_examination_results_package_name"
				title="体检结果套餐名称"
				source_table="physical_examination_results"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/health_intervention/list', 'get')"
				:list="result_health_intervention_population_category"
				title="健康干预人群类别"
				source_table="health_intervention"
			  ></list_result_search>
			</div>
		  </div>
		</div>
	  </div>
	</div>
  </div>
</template>

<script>
import mixin from "../../mixins/page.js";
import list_result_search from "../../components/diy/list_result_search.vue";

export default {
  mixins: [mixin],
  data() {
	return {
	  "query": {
		word: "",
	  },
	  "result_article": [],
			"result_registered_user_user_name":[],
			"result_member_files_full_name":[],
			"result_health_assessment_full_name":[],
			"result_health_assessment_evaluation_type":[],
			"result_physical_examination_package_package_number":[],
			"result_physical_examination_package_package_name":[],
			"result_physical_examination_appointment_order_number":[],
			"result_physical_examination_appointment_package_number":[],
			"result_physical_examination_appointment_package_name":[],
			"result_physical_examination_results_order_number":[],
			"result_physical_examination_results_package_name":[],
			"result_health_intervention_population_category":[],
	};
  },
  methods: {
	/**
	 * 获取文章
	 */
	get_article() {
	  this.$get("~/api/article/get_list?like=0", { page: 1, size: 10, title: this.query.word }, (json) => {
		if (json.result) {
		  this.result_article = json.result.list;
		}
	  });
	},
	/**
	 * 获取user_name
	 */
	get_registered_user_user_name(){
		this.$get("~/api/registered_user/get_list?like=0", { page: 1, size: 10, "user_name": this.query.word }, (json) => {
		  if (json.result) {
			var result_registered_user_user_name = json.result.list;
			result_registered_user_user_name.map(o => o.title = o['user_name'])
	  			this.result_registered_user_user_name = result_registered_user_user_name
		 	}
		});
	},
	/**
	 * 获取full_name
	 */
	get_member_files_full_name(){
		this.$get("~/api/member_files/get_list?like=0", { page: 1, size: 10, "full_name": this.query.word }, (json) => {
		  if (json.result) {
			var result_member_files_full_name = json.result.list;
			result_member_files_full_name.map(o => o.title = o['full_name'])
	  			this.result_member_files_full_name = result_member_files_full_name
		 	}
		});
	},
	/**
	 * 获取full_name
	 */
	get_health_assessment_full_name(){
		this.$get("~/api/health_assessment/get_list?like=0", { page: 1, size: 10, "full_name": this.query.word }, (json) => {
		  if (json.result) {
			var result_health_assessment_full_name = json.result.list;
			result_health_assessment_full_name.map(o => o.title = o['full_name'])
	  			this.result_health_assessment_full_name = result_health_assessment_full_name
		 	}
		});
	},
	/**
	 * 获取evaluation_type
	 */
	get_health_assessment_evaluation_type(){
		this.$get("~/api/health_assessment/get_list?like=0", { page: 1, size: 10, "evaluation_type": this.query.word }, (json) => {
		  if (json.result) {
			var result_health_assessment_evaluation_type = json.result.list;
			result_health_assessment_evaluation_type.map(o => o.title = o['evaluation_type'])
	  			this.result_health_assessment_evaluation_type = result_health_assessment_evaluation_type
		 	}
		});
	},
	/**
	 * 获取package_number
	 */
	get_physical_examination_package_package_number(){
		this.$get("~/api/physical_examination_package/get_list?like=0", { page: 1, size: 10, "package_number": this.query.word }, (json) => {
		  if (json.result) {
			var result_physical_examination_package_package_number = json.result.list;
			result_physical_examination_package_package_number.map(o => o.title = o['package_number'])
	  			this.result_physical_examination_package_package_number = result_physical_examination_package_package_number
		 	}
		});
	},
	/**
	 * 获取package_name
	 */
	get_physical_examination_package_package_name(){
		this.$get("~/api/physical_examination_package/get_list?like=0", { page: 1, size: 10, "package_name": this.query.word }, (json) => {
		  if (json.result) {
			var result_physical_examination_package_package_name = json.result.list;
			result_physical_examination_package_package_name.map(o => o.title = o['package_name'])
	  			this.result_physical_examination_package_package_name = result_physical_examination_package_package_name
		 	}
		});
	},
	/**
	 * 获取order_number
	 */
	get_physical_examination_appointment_order_number(){
		this.$get("~/api/physical_examination_appointment/get_list?like=0", { page: 1, size: 10, "order_number": this.query.word }, (json) => {
		  if (json.result) {
			var result_physical_examination_appointment_order_number = json.result.list;
			result_physical_examination_appointment_order_number.map(o => o.title = o['order_number'])
	  			this.result_physical_examination_appointment_order_number = result_physical_examination_appointment_order_number
		 	}
		});
	},
	/**
	 * 获取package_number
	 */
	get_physical_examination_appointment_package_number(){
		this.$get("~/api/physical_examination_appointment/get_list?like=0", { page: 1, size: 10, "package_number": this.query.word }, (json) => {
		  if (json.result) {
			var result_physical_examination_appointment_package_number = json.result.list;
			result_physical_examination_appointment_package_number.map(o => o.title = o['package_number'])
	  			this.result_physical_examination_appointment_package_number = result_physical_examination_appointment_package_number
		 	}
		});
	},
	/**
	 * 获取package_name
	 */
	get_physical_examination_appointment_package_name(){
		this.$get("~/api/physical_examination_appointment/get_list?like=0", { page: 1, size: 10, "package_name": this.query.word }, (json) => {
		  if (json.result) {
			var result_physical_examination_appointment_package_name = json.result.list;
			result_physical_examination_appointment_package_name.map(o => o.title = o['package_name'])
	  			this.result_physical_examination_appointment_package_name = result_physical_examination_appointment_package_name
		 	}
		});
	},
	/**
	 * 获取order_number
	 */
	get_physical_examination_results_order_number(){
		this.$get("~/api/physical_examination_results/get_list?like=0", { page: 1, size: 10, "order_number": this.query.word }, (json) => {
		  if (json.result) {
			var result_physical_examination_results_order_number = json.result.list;
			result_physical_examination_results_order_number.map(o => o.title = o['order_number'])
	  			this.result_physical_examination_results_order_number = result_physical_examination_results_order_number
		 	}
		});
	},
	/**
	 * 获取package_name
	 */
	get_physical_examination_results_package_name(){
		this.$get("~/api/physical_examination_results/get_list?like=0", { page: 1, size: 10, "package_name": this.query.word }, (json) => {
		  if (json.result) {
			var result_physical_examination_results_package_name = json.result.list;
			result_physical_examination_results_package_name.map(o => o.title = o['package_name'])
	  			this.result_physical_examination_results_package_name = result_physical_examination_results_package_name
		 	}
		});
	},
	/**
	 * 获取population_category
	 */
	get_health_intervention_population_category(){
		this.$get("~/api/health_intervention/get_list?like=0", { page: 1, size: 10, "population_category": this.query.word }, (json) => {
		  if (json.result) {
			var result_health_intervention_population_category = json.result.list;
			result_health_intervention_population_category.map(o => o.title = o['population_category'])
	  			this.result_health_intervention_population_category = result_health_intervention_population_category
		 	}
		});
	},

  },
  components: { list_result_search },
	created(){
    this.query.word = this.$route.query.word || "";
  },
  mounted() {
	this.get_article();
		this.get_registered_user_user_name();
		this.get_member_files_full_name();
		this.get_health_assessment_full_name();
		this.get_health_assessment_evaluation_type();
		this.get_physical_examination_package_package_number();
		this.get_physical_examination_package_package_name();
		this.get_physical_examination_appointment_order_number();
		this.get_physical_examination_appointment_package_number();
		this.get_physical_examination_appointment_package_name();
		this.get_physical_examination_results_order_number();
		this.get_physical_examination_results_package_name();
		this.get_health_intervention_population_category();
  },
  watch: {
	$route() {
	  $.push(this.query, this.$route.query);
	  this.get_article();
	  this.get_registered_user_user_name();
	  this.get_member_files_full_name();
	  this.get_health_assessment_full_name();
	  this.get_health_assessment_evaluation_type();
	  this.get_physical_examination_package_package_number();
	  this.get_physical_examination_package_package_name();
	  this.get_physical_examination_appointment_order_number();
	  this.get_physical_examination_appointment_package_number();
	  this.get_physical_examination_appointment_package_name();
	  this.get_physical_examination_results_order_number();
	  this.get_physical_examination_results_package_name();
	  this.get_health_intervention_population_category();
	},
  },
};
</script>

<style scoped>
.card_search {
  text-align: center;
}
.card_result_search>.title {
  text-align: center;
  padding: 10px 0;
}
</style>
