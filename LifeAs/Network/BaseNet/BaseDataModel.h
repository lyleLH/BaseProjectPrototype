//
//  BaseDataModel.h
//  LHTabbarDemo
//
//  Created by lyleKP on 15/7/31.
//  Copyright (c) 2015年 lyleKP. All rights reserved.
//

#import <Foundation/Foundation.h>



typedef enum {
    kClassName_None = -1,
    kClassName_KP_Business = 100
}JsonClassName;

typedef enum {
    kClassMethod_None = -1,
    

#pragma mark --- LMAppUser JSON接口

    
#pragma mark AutoService 服务相关JSON接口
    //服务相关
    kClassMethod_ServiceItem,//读取服务项目
    kClassMethod_MerchantDetail,//获取服务商详情
    kClassMethod_ServiceDetail,//获取服务详情
    kClassMethod_ServiceByCategoryID,//搜索附近服务(产品关联服务)
    kClassMethod_FavoriteMerchant,//收藏服务商
    kClassMethod_FavoriteMerchantService,//收藏服务
    kClassMethod_IsFavoriteMerchant,//判断是否存已经收藏服务商
    kClassMethod_IsFavoriteMerchantService,//判断是否存已经收藏服务
    kClassMethod_RemoveFavorite,//移除收藏项
    kClassMethod_SearchByMerchants,//服务搜索
    kClassMethod_CommentsByMerchantID,//根据服务商ID获取服务商评价列表
    kClassMethod_ServiceCreditMore,//批量发布服务评价

#pragma mark  资讯JSON接口
//    kClassMethod_NewsCategory,//获取资讯类目
//    kClassMethod_NewsByCategory,//根据类别获取资讯
//    kClassMethod_NewsContentById,//通过ID获取资讯类容
//    kClassMethod_OperatStoreNews,//是否收藏
//    kClassMethod_OperatPraiseNews,//是否点赞
//    kClassMethod_OperatReadNews,//是否阅读
//    kClassMethod_StoreNews,//获取收藏列表
//    kClassMethod_QueryJudgmentIsStorePraise,//判断资讯是否收藏、点赞
//    kClassMethod_DeleteNewsStore,//删除收藏
//    kClassMethod_DeleteNewsStores,//批量删除收藏
    
#pragma mark  Product 商城JSON接口
    kClassMethod_MarketAD,//获取商城首页广告

    kClassMethod_ProductList,//获取产品列表
    kClassMethod_ProductDetails,//获取产品详情
    kClassMethod_ProductStock,//获取产品库存
    kClassMethod_ProductClassify,//获取类目
    kClassMethod_RecommendClassify,//获取推荐类目
    kClassMethod_ServiceBindProduct,//判断产品是否有服务关联
    kClassMethod_ProductShaiXuan,//获取产品列表筛选条件
    kClassMethod_IsProductCollect,//判断产品是否收藏
    kClassMethod_ProductCollect,//产品收藏
    kClassMethod_DefaultCollet,//取消收藏(产品和店铺通用)

    kClassMethod_AddShopCartOrBuy,//加入购物车或立即购买
    
    kClassMethod_ProductAppraise,//获取产品评价
    kClassMethod_Freight,//获取运费
    kClassMethod_GetProductIdByCount,//单个商品评价总数
#pragma mark - 支付相关
    kClassMethod_GetKpbInfo,//获取酷配宝余额
    kClassMethod_CanBeUsedVoucher,//获取可用卡券包列表（红包，代金券）
    kClassMethod_CalculateAmount,//勾选卡券包重新计算金额
    kClassMethod_KPPaying,//酷配宝支付
    kClassMethod_ThirdCommiting,//第三方支付
    
#pragma mark  店铺JSON接口
    kClassMethod_ShopInformation,//获取店铺信息
    kClassMethod_ShopRecommendProduct,//获取店铺推荐产品
    kClassMethod_IsShopCollect,//判断店铺是否收藏
    kClassMethod_ShopCollect,//店铺收藏
    
    
    


    
#pragma mark - 搜索接口
    kClassMethod_SearchRelevance,//搜索关联
//    kClassMethod_SearchProduct,//搜索产品
//    kClassMethod_SearchShop,//搜索店铺
#pragma mark --物流公司
    kClassMethod_ExpressCompany,//获取物流公司列表
    
    
#pragma mark  用户JSON 接口
    


#pragma mark  用户JSON 接口－lh-0827
    kClassMethod_RegisterUser,//注册
    kClassMethod_Login,//登陆
    kClassMethod_MemberInfo,//获取用户信息
    kClassMethod_UpdateLoginPassword,//更改密码
    kClassMethod_FindLoginPassword,//找回密码
    kClassMethod_IsExistsAccount,//判断手机号是否注册
    
    kClassMethod_SaveMyBreed,//设置我的车型
    kClassMethod_MyBreed,//获取我的车型

    
    
    kClassMethod_HasPayPassword,//是否设置支付密码
    kClassMethod_ValidPayPassword,//验证支付密码
    kClassMethod_SetPayPassword,//设置支付密码
    kClassMethod_MyVoucher,//获取卡券包列表



#pragma mark  购物车－lh-0827
    
    kClassMethod_Carts,//获取购物车列表
    kClassMethod_UpdateQuantity,//更新购物车商品数量

#pragma  mark -- 收货地址－lh-0827
    kClassMethod_ConsigneeList,//获取收货地址列表
    kClassMethod_SaveConsignee,//添加或者修改收货地址
    kClassMethod_DelConsignee,//删除收货地址
    kClassMethod_SetDefaultAddress,//设置默认收货地址
    kClassMethod_DefaultAddress,//获取默认收货地址

#pragma mark  车型接口－lh-0827
    
    kCLassMethod_DeleteBreed,// 删除车型
    kCLassMethod_AllBrands,// 获取所有汽车品牌

    kClassMethod_AutoSeriesByBrandId,//获取品牌下的车系

    kClassMethod_Breeds, //根据车系id获取车型
    kClassMethod_SetDefaultBreed,//设置默认车型

    
#pragma mark -- 搜索接口－lh-0827
    kClassMethod_Keys,//根据用户输入的关键词返回盘古的分词
    kClassMethod_ProductSearch,//根据关键字搜索产品
    
    
#pragma mark -- 店铺接口－lh-0827
    kClassMethod_SearchShop,//店铺搜索
    
#pragma mark - -短信邮件接口－lh -- 0827
    
    kClassMethod_PostCaptcha,//发送短信验证码
    kClassMethod_PostRandomCode,//发送邮件验证码
    kClassMethod_VerifyCode, //校验验证码

#pragma mark -- 评论接口－lh-0827
    
    kClassMethod_DoCredit,//添加评论信息

#pragma mark-- 反馈升级检查－lh-0827
    
    kClassMethod_AddInform,//添加反馈信息
    kClassMethod_UpdateCheck,//升级检查
    
#pragma mark -- 订单接口 lh -0828
    kClassMethod_OrderDetail,//订单详情
    kClassMethod_ApplyRefund,//买家申请退款
    kClassMethod_CancelRefundApply,//买家取消退款申请
    kClassMethod_RefundDetail,//获取退款单详情
    kClassMethod_ApplyReturn,//买家申请退货
    kClassMethod_ReturnDetail,//获取退货单详情
    kClassMethod_CancelReturn,//买家取消退货申请
    kClassMethod_OrderList,//订单列表
    kClassMethod_CommitReturnLogistics,//录入退货物流信息

    kClassMethod_UpdateQuantityToCart,//更新购物车商品项数量
    kClassMethod_DeletesFromCart,//删除多个购物车商品项目
    kClassMethod_CartsList,//购物车列表
    kClassMethod_Go2ConfirmOrders,//由购物车跳转到订单列表确认页数据处理
    
    kClassMethod_SubmitOrder,//生成订单
    kClassMethod_CloseTradingByOperator,//关闭订单
   
#pragma mark -- 产品/服务/店铺收藏列表 lp- 0903
    kClassMethod_GetFavorite,//收藏列表
    kClassMethod_RemoveCollection,//移除收藏
    kClassMethod_Express,//物流信息
#pragma mark -- lh 0905
    kClassMethod_ConfirmGoodsArrivaled,//确认收货
    
#pragma mark -- 退款退货 lh 0907
    kClassMethod_RefundList,//退款订单列表
    kClassMethod_ReturnList,//退货订单列表

#pragma mark -- 天气/差违章 lp0909
    kClassMethod_CheckViolation,//查违章
    kClassMethod_Weather,//查天气
#pragma mark -- 根据订单号生成支付号 --lh 0911
    kClassMethos_BuildNewPayNumber,
#pragma mark -- 清除购物车失效商品 --lh 1012
    kClassMethod_ClearInvalidItem,
#pragma mark -- lh 1014
    kClassMethod_RemoveFavorites,//移除收藏夹多个收藏项目
    
#pragma mark -- lp 1118维保单
    kClassMethod_GetMaintOrders,// 维保订单列表
    kClassMethod_ModifyMaintOrdersState,//修改订单状态
    kClassMethod_FirmMaintOrder,//确认订单
    kClassMethod_GetListByOrder,//申诉记录
    kClassMethod_GetMaintOrdersDetails,//订单详情
    kClassMethod_Add,//申诉
    kClassMethod_Cancel,//取消申诉
    kClassMethod_AgreeHandle,//同意申诉
    kClassMethod_DisAgreeHandle,//不同意申诉
    kClassMethod_UploadPictures,//上传图片
#pragma mark -- lp 问题消息
    kClassMethod_GetQestionList,//问答列表
    kClassMethod_GetQestionDeatailsReply,//问答详情
    kClassMethod_AddQestion,//提问
    kClassMethod_AddReply,//消息回复
    kClassMethod_MessageDetail,//消息详情
    kClassMethod_GetMessageListSum,//消息列表
    kClassMethod_DeleteMessage,//删除消息
    kClassMethod_GetNoReadMessageCount,//未读消息数
    kClassMethod_UpdateMessageRead,//刷新未读
#pragma mark -- lp 维保单支付
    kClassMethod_CreatePayNumber,//创建预支付号
    kClassMethod_KPPay,//酷配宝支付
    kClassMethod_ThirdPay,//第三方支付
    
#pragma mark  -- lp 1.6
    kClassMethod_GetInsuranceCompany,//保险公司
    kClassMethod_GetMyInsuranceCompany,//我的保险公司
    kClassMethod_GetBrandAfterSaleService,//品牌售后
    kClassMethod_GetMyBrandAfterSaleService,//我的品牌售后
    kClassMethod_GetOilPriceByLocal,//油电站
    kClassMethod_GetRoadRescueCompany,//道路救援    
#pragma mark -- ly 2016.1.5
    kClassMethod_GetMemberScore,//获取会员等级、积分-3.2.1
    kClassMethod_MemberSignDay,//会员签到
    kClassMethod_GetMemberInfo,//会员信息

#pragma mark -- tz 2016.1.18
    kClassMethod_SetHeadPic,//设置头像
    kClassMethod_SetNickName,//设置昵称
    
    kClassMethod_SetPayPasswordByOldPwd,//根据旧支付密码设置新的支付密码

#pragma mark -- lh 2016.1.22
    kClassMethod_GetSummaryList , //消息界面未读消息总数
    
    
#pragma mark -- ly 2016.4.1
    kClassMethod_UploadFiles, // 上传文件
    
#pragma mark -- 询价报价
    kClassMethod_SearchQuotationDocument,
    kClassMethod_QueryQuotationDetail,
    kClassMethod_AddInquiry,
    kClassMethod_ChatUserInfo,//获取用户头像和昵称
}JsonClassMethod;


@protocol DataModelUpdateDelegate <NSObject>


@end


@interface BaseDataModel : NSObject


@property (nonatomic,assign) id <DataModelUpdateDelegate> modelDelegate ;


@end
