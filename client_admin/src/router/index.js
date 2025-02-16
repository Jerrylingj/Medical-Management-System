import Vue from 'vue';
import VueRouter from 'vue-router';
import index from '../views/index.vue';
import login from '../views/login.vue';
import forgot from '../views/forgot.vue';
Vue.use(VueRouter)

const routes = [
	// 主页
	{
		path: '/',
		name: 'index',
		component: index,
		meta: {
			index: 0,
			title: '首页'
		}
	},

	// 登录
	{
		path: '/login',
		name: 'login',
		component: login,
		meta: {
			index: 0,
			title: '登录'
		}
	},

	// 忘记密码
	{
		path: '/forgot',
		name: "forgot",
		component: forgot,
		meta: {
			index: 0,
			title: '忘记密码'
		}
	},

	// 修改密码
	{
		path: '/user/password',
		name: "password",
		component: () => import("../views/user/password.vue"),
		meta: {
			index: 0,
			title: '修改密码'
		}
	},

	// 视频播放页
	{
		path: "/media/video",
		name: "video",
		component: () => import('../views/media/video.vue'),
		meta: {
			index: 0,
			title: "视频"
		}
	},

	// 音频播放页
	{
		path: "/media/audio",
		name: "audio",
		component: () => import('../views/media/audio.vue'),
		meta: {
			index: 0,
			title: "音频"
		}
	},
	// 权限路由
	{
		path: '/auth/table',
		name: 'auth_table',
		component: () => import('../views/nav/table.vue'),
		meta: {
			index: 0,
			title: '权限列表'
		}
	},
	{
		path: '/auth/view',
		name: 'auth_view',
		component: () => import('../views/nav/view.vue'),
		meta: {
			index: 0,
			title: '权限详情'
		}
	},

	// 友情链接路由
	// {
	// 	path: '/link/table',
	// 	name: 'link_table',
	// 	component: () => import('../views/link/table.vue'),
	// 	meta: {
	// 		index: 0,
	// 		title: '链接列表'
	// 	}
	// },
	// {
	// 	path: '/link/view',
	// 	name: 'link_view',
	// 	component: () => import('../views/link/view.vue'),
	// 	meta: {
	// 		index: 0,
	// 		title: '链接详情'
	// 	}
	// },

	// 轮播图路由
	{
		path: '/slides/table',
		name: 'slides_table',
		component: () => import('../views/slides/table.vue'),
		meta: {
			index: 0,
			title: '轮播图列表'
		}
	},
	{
		path: '/slides/view',
		name: 'slides_view',
		component: () => import('../views/slides/view.vue'),
		meta: {
			index: 0,
			title: '轮播图详情'
		}
	},
	// 文章路由
	{
		path: '/article/table',
		name: 'article_table',
		component: () => import('../views/article/table.vue'),
		meta: {
			index: 0,
			title: '文章列表'
		}
	},
	{
		path: '/article/view',
		name: 'article_view',
		component: () => import('../views/article/view.vue'),
		meta: {
			index: 0,
			title: '文章详情'
		}
	},

	// 文章分类路由
	{
		path: '/article_type/table',
		name: 'article_type_table',
		component: () => import('../views/article_type/table.vue'),
		meta: {
			index: 0,
			title: '文章分类列表'
		}
	},
	{
		path: '/article_type/view',
		name: 'article_type_view',
		component: () => import('../views/article_type/view.vue'),
		meta: {
			index: 0,
			title: '文章分类详情'
		}
	},

	// 广告路由
	// {
	// 	path: '/ad/table',
	// 	name: 'ad_table',
	// 	component: () => import('../views/ad/table.vue'),
	// 	meta: {
	// 		index: 0,
	// 		title: '广告列表'
	// 	}
	// },
	// {
	// 	path: '/ad/view',
	// 	name: 'ad_view',
	// 	component: () => import('../views/ad/view.vue'),
	// 	meta: {
	// 		index: 0,
	// 		title: '广告详情'
	// 	}
	// },
	// 公告路由
	{
		path: '/notice/table',
		name: 'notice_table',
		component: () => import('../views/notice/table.vue'),
		meta: {
			index: 0,
			title: '公告列表'
		}
	},
	{
		path: '/notice/view',
		name: 'notice_view',
		component: () => import('../views/notice/view.vue'),
		meta: {
			index: 0,
			title: '公告详情'
		}
	},
	// 考试路由
	{
		path: '/exam/table',
		name: 'exam_table',
		component: () => import('../views/exam/table.vue'),
		meta: {
			index: 0,
			title: '考试管理'
		}
	},
	{
		path: '/exam/view',
		name: 'exam_view',
		component: () => import('../views/exam/view.vue'),
		meta: {
			index: 0,
			title: '考试详情'
		}
	},
	{
		path: '/question_table/table',
		name: 'question_table_table',
		component: () => import('../views/exam/question_table.vue'),
		meta: {
			index: 0,
			title: '题库列表'
		}
	},
	{
		path: '/question_view/view',
		name: 'question_view_view',
		component: () => import('../views/exam/question_view.vue'),
		meta: {
			index: 0,
			title: '题库详情'
		}
	},
	{
		path: '/answer_view/view',
		name: 'answer_view_view',
		component: () => import('../views/exam/answer_view.vue'),
		meta: {
			index: 0,
			title: '答题'
		}
	},
	{
		path: '/score_table/table',
		name: 'score_table_table',
		component: () => import('../views/exam/score_table.vue'),
		meta: {
			index: 0,
			title: '评分列表'
		}
	},
	{
		path: '/score_view/view',
		name: 'score_view_view',
		component: () => import('../views/exam/score_view.vue'),
		meta: {
			index: 0,
			title: '评分详情'
		}
	},
	// 评论路由
	{
		path: '/comment/table',
		name: 'comment_table',
		component: () => import('../views/comment/table.vue'),
		meta: {
			index: 0,
			title: '评论列表'
		}
	},
	{
		path: '/comment/view',
		name: 'comment_view',
		component: () => import('../views/comment/view.vue'),
		meta: {
			index: 0,
			title: '评论详情'
		}
	},
	// 注册用户路由
	{
		path: '/registered_user/table',
		name: 'registered_user_table',
		component: () => import('../views/registered_user/table.vue')
	},
	{
		path: '/registered_user/view',
		name: 'registered_user_view',
		component: () => import('../views/registered_user/view.vue')
	},
	// 会员档案路由
	{
		path: '/member_files/table',
		name: 'member_files_table',
		component: () => import('../views/member_files/table.vue')
	},
	{
		path: '/member_files/view',
		name: 'member_files_view',
		component: () => import('../views/member_files/view.vue')
	},
	// 健康评估路由
	{
		path: '/health_assessment/table',
		name: 'health_assessment_table',
		component: () => import('../views/health_assessment/table.vue')
	},
	{
		path: '/health_assessment/view',
		name: 'health_assessment_view',
		component: () => import('../views/health_assessment/view.vue')
	},
	// 体检套餐路由
	{
		path: '/physical_examination_package/table',
		name: 'physical_examination_package_table',
		component: () => import('../views/physical_examination_package/table.vue')
	},
	{
		path: '/physical_examination_package/view',
		name: 'physical_examination_package_view',
		component: () => import('../views/physical_examination_package/view.vue')
	},
	// 体检预约路由
	{
		path: '/physical_examination_appointment/table',
		name: 'physical_examination_appointment_table',
		component: () => import('../views/physical_examination_appointment/table.vue')
	},
	{
		path: '/physical_examination_appointment/view',
		name: 'physical_examination_appointment_view',
		component: () => import('../views/physical_examination_appointment/view.vue')
	},
	// 体检结果路由
	{
		path: '/physical_examination_results/table',
		name: 'physical_examination_results_table',
		component: () => import('../views/physical_examination_results/table.vue')
	},
	{
		path: '/physical_examination_results/view',
		name: 'physical_examination_results_view',
		component: () => import('../views/physical_examination_results/view.vue')
	},
	// 健康干预路由
	{
		path: '/health_intervention/table',
		name: 'health_intervention_table',
		component: () => import('../views/health_intervention/table.vue')
	},
	{
		path: '/health_intervention/view',
		name: 'health_intervention_view',
		component: () => import('../views/health_intervention/view.vue')
	},

	// 用户路由
	{
		path: '/user/table',
		name: 'user_table',
		component: () => import('../views/user/table.vue'),
		meta: {
			index: 0,
			title: '用户列表'
		}
	},
	{
		path: '/user/view',
		name: 'user_view',
		component: () => import('../views/user/view.vue'),
		meta: {
			index: 0,
			title: '用户详情'
		}
	},
	{
		path: '/user/info',
		name: 'user_info',
		component: () => import('../views/user/info.vue'),
		meta: {
			index: 0,
			title: '个人信息'
		}
	},
	// 用户组路由
	{
		path: '/user_group/table',
		name: 'user_group_table',
		component: () => import('../views/user_group/table.vue'),
		meta: {
			index: 0,
			title: '用户组列表'
		}
	},
	{
		path: '/user_group/view',
		name: 'user_group_view',
		component: () => import('../views/user_group/view.vue'),
		meta: {
			index: 0,
			title: '用户组详情'
		}
	}
]

const router = new VueRouter({
	mode: 'history',
	base: process.env.BASE_URL,
	routes
})

router.beforeEach((to, from, next) => {
	let token = to.query.token;
	if (token){
		$.db.set("token",token,120);
	}
	next();
})

router.afterEach((to, from, next) => {
	let title = "医疗管理系统-admin";
	document.title = title;
})

export default router
