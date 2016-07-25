//
//  JsonRequestClassVerify.m
//  LHAppFramework
//
//  Created by lyleKP on 15/7/31.
//  Copyright (c) 2015年 lyleKP. All rights reserved.
//

#import "JsonRequestClassVerify.h"
#import "KPNetSetting.h"

@implementation JsonRequestClassVerify

+ (NSString *)getClassName:(JsonClassName)cn {
    switch (cn) {
        case kClassName_None:
            return nil;
            break;
        case kClassName_KP_Business:
            return @"KuPaiBusiness";
            break;
        default:
            return nil;
            break;
    }
}

+ (NSString *)getClassMethod:(JsonClassMethod)cm {
    switch (cm) {
        case kClassName_None:
            return nil;
            break;

#pragma mark-- AutoService 服务相关接口
        // START
        case kClassMethod_ServiceItem: //服务类别
            return [self autoServiceurlStr:@"GetServiceItem"];
            break;
        case kClassMethod_MerchantDetail: //服务商详情
            return [self autoServiceurlStr:@"GetMerchantDetail"];
            break;
        case kClassMethod_ServiceDetail: //服务详情
            return [self autoServiceurlStr:@"GetServiceDetail"];
            break;
        case kClassMethod_ServiceByCategoryID: //搜索附近服务(产品)
            return [self autoServiceurlStr:@"GetServiceByCategoryID"];
            break;
        case kClassMethod_FavoriteMerchant: //收藏服务商
            return [self autoServiceurlStr:@"FavoriteMerchant"];
            break;
        case kClassMethod_FavoriteMerchantService: //收藏服务商服务
            return [self autoServiceurlStr:@"FavoriteMerchantService"];
            break;
        case kClassMethod_IsFavoriteMerchant: //判断是否存已经收藏服务商
            return [self autoServiceurlStr:@"IsFavoriteMerchant"];
            break;
        case kClassMethod_IsFavoriteMerchantService: //判断是否存已经收藏服务商服务
            return [self autoServiceurlStr:@"IsFavoriteMerchantService"];
            break;
        case kClassMethod_RemoveFavorite: //移除服务项
            return [self autoServiceurlStr:@"RemoveFavorite"];
            break;
        case kClassMethod_SearchByMerchants: //服务搜索
            return [self autoServiceurlStr:@"SearchByMerchants"];
            break;
        case kClassMethod_CommentsByMerchantID: //根据服务商ID获取服务商评价列表
            return [self appraiseNewUrlStr:@"GetCommentsByMerchantID"];
            break;
        case kClassMethod_ServiceCreditMore: //批量发表服务评论
            return [self autoServiceurlStr:@"ServiceCreditMore"];
            break;
#pragma mark-- 资讯接口
//        case kClassMethod_NewsCategory: //获取资讯类别
//            return [self adsNewsUrlStr:@"GetNewsCategory"];
//            break;
//        case kClassMethod_NewsByCategory: //根据类别获取资讯列表
//            return [self adsNewsUrlStr:@"GetNewsByCategory"];
//            break;
//        case kClassMethod_NewsContentById: //获取资讯类容
//            return [self adsNewsUrlStr:@"GetNewsContentById"];
//            break;
//        case kClassMethod_OperatStoreNews: //是否收藏
//            return [self adsNewsUrlStr:@"OperatStoreNews"];
//            break;
//        case kClassMethod_OperatPraiseNews: //是否点赞
//            return [self adsNewsUrlStr:@"OperatPraiseNews"];
//            break;
//        case kClassMethod_OperatReadNews: //是否阅读
//            return [self adsNewsUrlStr:@"OperatReadNews"];
//            break;
//        case kClassMethod_StoreNews: //获取资讯收藏列表
//            return [self adsNewsUrlStr:@"GetStoreNews"];
//            break;
//        case kClassMethod_DeleteNewsStore: //删除用户收藏
//            return [self adsNewsUrlStr:@"DeleteNewsStore"];
//            break;
//#pragma mark-- lh 1015
//        case kClassMethod_DeleteNewsStores: //批量删除用户收藏
//            return [self adsNewsUrlStr:@"DeleteNewsStores"];
//            break;

#pragma mark--  Product 商城接口

        case kClassMethod_MarketAD: //商城首页广告
            return [self adsNewsUrlStr:@"GetAdsListByPageIdLocalIds"];
            break;
        case kClassMethod_ProductList: //获取产品列表
            return [self ProductUrlStr:@"ProductList"];
            break;
        case kClassMethod_ProductShaiXuan: //获取产品列表筛选条件
            return [self categoryUrlStr:@"GetCategoryById"];
            break;
        case kClassMethod_ProductDetails: //获取产品详情
            return [self ProductUrlStr:@"GetProductsById"];
            break;

        case kClassMethod_ProductStock://获取产品库存
            return [self ProductUrlStr:@"GetProductAmount"];
            break;
        case kClassMethod_ProductClassify: //获取产品类别
            return [self categoryUrlStr:@"GetAllCategory"];
            break;
        case kClassMethod_RecommendClassify: //获取推荐类目
            return [NSString stringWithFormat:@"%@AppProductSeries/Get", kURL_PREFIX];
            break;
        case kClassMethod_ServiceBindProduct: //判断产品是否绑定服务
            return [self autoServiceurlStr:@"CheckProBindingService"];
            break;
        case kClassMethod_IsProductCollect: //判断产品是否收藏
            return [self favoriteUrlStr:@"ExistsProduct"];
            break;
        case kClassMethod_ProductCollect: //产品收藏
            return [self favoriteUrlStr:@"AddProductFavorite"];
            break;
        case kClassMethod_AddShopCartOrBuy: //加入购物车或立即购买
            return [self shoppingCartUrlStr:@"AddServiceAndProductToCart"];
            break;
        case kClassMethod_ProductAppraise: //获取产品评价
            return [self appraiseNewUrlStr:@"GetCreditsByProductId"];
            break;
        case kClassMethod_Freight:
            return [self freightsUrlStr:@"GetFreightTypeWithMoney"];

        case kClassMethod_GetProductIdByCount://单个商品评价总数
            return [self appraiseUrlStr:@"GetProductIdByCount"];
            
#pragma mark - 支付相关
        case kClassMethod_GetKpbInfo://获取可用酷配宝余额
            return [self KPBUrlStr:@"GetKpbInfo"];
            break;
        case kClassMethod_CanBeUsedVoucher: //获取可用卡券包（红包，代金券）列表
                                            //            return [self transPayUrlStr:@"GetCanBeUsedVoucher"];
            return [self newShoppingCartUrlStr:@"GetCanBeUsedVoucher"];
            break;

        case kClassMethod_CalculateAmount://勾选卡券包重新计算金额
            return [self KPBUrlStr:@"CalculateAmount"];

            break;
        case kClassMethod_KPPaying:
            return [self KPBUrlStr:@"KPPaying"];
            break;
        case kClassMethod_ThirdCommiting:
            return [self KPBUrlStr:@"ThirdCommiting"];
            break;

            
#pragma mark -- 店铺接口
            
        case kClassMethod_ShopInformation://获取店铺信息
            return [self shopManager:@"GetShopInfo"];

            break;
        case kClassMethod_ShopRecommendProduct: //获取店铺推荐产品
            return [self shopManager:@"GetNewProduct_3_3"];
            break;
#pragma mark - -  店铺接口－－0827
        case kClassMethod_SearchShop: //店铺搜索
            return [self shopManager:@"SearchShop"];
            break;

#pragma mark - -  收藏接口
        case kClassMethod_IsShopCollect: //判断店铺是否收藏
            return [self favoriteUrlStr:@"ExistsShop"];
            break;
        case kClassMethod_ShopCollect: //店铺收藏
            return [self favoriteUrlStr:@"AddShopFavorite"];
            break;
        case kClassMethod_DefaultCollet: //取消收藏（店铺产品通用）
            return [self favoriteUrlStr:@"RemoveFavorite"];
            break;

#pragma mark - 搜索
        case kClassMethod_SearchRelevance:
            return [self ProductUrlStr:@"SearchAutoTip"];
            break;



#pragma mark -- 用户接口--lh -- 0827
        case kClassMethod_IsExistsAccount://判断手机号是否注册
            return [self accountsUrlStr:@"IsExistsAccount"];
            break;
        case kClassMethod_RegisterUser: //注册
            return [self accountsUrlStr:@"RegisterUser"];
            break;
        case kClassMethod_Login: //登陆
            return [self accountsUrlStr:@"Login"];
            break;
        case kClassMethod_MemberInfo: //获取会员信息
            return [self accountsUrlStr:@"GetMemberInfo"];
            break;
        case kClassMethod_UpdateLoginPassword: //更改密码
            return [self accountsUrlStr:@"UpdateLoginPassword"];
            break;
        case kClassMethod_FindLoginPassword://找回密码
            return [self accountsUrlStr:@"FindLoginPassword"];
            break;
        case kClassMethod_SaveMyBreed: //设置我的车型
            return [self accountsUrlStr:@"SaveMyBreed"];
            break;
        case kClassMethod_MyBreed: //获取我的车型
            return [self accountsUrlStr:@"GetMyBreed"];
            break;
        case kClassMethod_SetDefaultBreed: //设置默认车型
            return [self newAccountsUrlStr:@"SetDefaultBreed"];
            break;
        case kCLassMethod_DeleteBreed: //删除车型
            return [self accountsUrlStr:@"DeleteBreed"];
            break;
        case kClassMethod_HasPayPassword: //是否已经设置支付密码
            return [self accountsUrlStr:@"HasPayPassword"];
            break;
        case kClassMethod_ValidPayPassword: //验证支付密码
            return [self accountsUrlStr:@"ValidPayPassword"];
            break;
        case kClassMethod_SetPayPassword: //设置支付密码
            return [self accountsUrlStr:@"SetPayPassword"];
            break;
        case kClassMethod_SetPayPasswordByOldPwd: //根据旧支付密码设置新的支付密码:
            return [self accountsUrlStr:@"SetPayPasswordByOldPwd"];


#pragma mark-- lh 0907
        case kClassMethod_MyVoucher: //获取卡券包列表
                                     //            return [self transPayUrlStr:@"GetVoucherList"];
            return [self newShoppingCartUrlStr:@"GetVoucherList"];
            break;

#pragma mark-- 购物车--lh -- 0827

        case kClassMethod_Carts: //购物车列表
            return [self shoppingCartUrlStr:@"GetCarts"];
            break;
        case kClassMethod_UpdateQuantity: //更新购物车商品数量
            return [self shoppingCartUrlStr:@"UpdateQuantity"];
            break;
#pragma mark--清除购物车失效商品--lh -- 1012
        case kClassMethod_ClearInvalidItem: //清除购物车失效商品
            return [self shoppingCartUrlStr:@"ClearInvalidItem"];
            break;

#pragma mark-- 收货地址--lh -- 0827

        case kClassMethod_ConsigneeList: //获取收货地址列表
            return [self ConsignAddressCartUrlStr:@"GetConsigneeList"];
            break;
        case kClassMethod_SaveConsignee: //添加或者修改收货地址
            return [self ConsignAddressCartUrlStr:@"SaveConsignee"];
            break;
        case kClassMethod_DelConsignee: //删除收货地址
            return [self ConsignAddressCartUrlStr:@"DelConsignee"];
            break;
        case kClassMethod_SetDefaultAddress: //设置默认收货地址
            return [self ConsignAddressCartUrlStr:@"SetDefaultAddress"];
            break;
        case kClassMethod_DefaultAddress: //获取默认收货地址
            return [self ConsignAddressCartUrlStr:@"GetDefaultAddress"];
            break;

#pragma mark-- 车型品牌接口--lh -- 0827

        case kCLassMethod_AllBrands: //获取所有汽车品牌
            return [self CarUrlStr:@"GetBrands"];
            break;
        case kClassMethod_AutoSeriesByBrandId: //获取品牌下的车系
            return [self CarUrlStr:@"GetAutoSeries"];
            break;

        case kClassMethod_Breeds: //根据车系id获取车型
            return [self CarUrlStr:@"GetBreeds"];
            break;

#pragma mark-- 搜索接口--lh -- 0827

        case kClassMethod_Keys: //根据用户输入的关键词返回盘古的分词
            return [NSString stringWithFormat:@"%@Lucene/GetFreightsByParentId", kURL_PREFIX];
            break;
        case kClassMethod_ProductSearch: //根据关键字搜索产品
            return [self ProductUrlStr:@"Search"];
            break;

#pragma mark - -短信邮件接口--lh -- 0827

        case kClassMethod_PostCaptcha: //发送短信验证码
            return [self SMSUrlStr:@"PostCaptcha"];
            break;
        case kClassMethod_PostRandomCode: //发送邮件验证码
            return [self SMSUrlStr:@"PostRandomCode"];
            break;
            
        case kClassMethod_VerifyCode:
            return [self accountsUrlStr:@"VerifyCode"];
            break;
#pragma mark - -评论接口--lh -- 0827

        case kClassMethod_DoCredit: //添加评论信息
            return [self appraiseUrlStr:@"DoCredit"];
            break;
#pragma mark-- 反馈升级检查--lh -- 0827
        case kClassMethod_AddInform: //添加反馈信息
            return [self accountsUrlStr:@"AddInformcontent"];
            break;
        case  kClassMethod_UpdateCheck: //升级检查
            return [self  Uitl:@"UpdateCheck"];

            break;
#pragma mark-- 订单接口  - lh 0828
        case kClassMethod_OrderDetail: //订单详情
            return [self PurchaseOrderUrlStr:@"GetOrderDetail"];
            break;
        case kClassMethod_ApplyRefund: //买家申请退款
            return [self PurchaseOrderUrlStr:@"ApplyRefund"];
            break;
        case kClassMethod_CancelRefundApply: //买家取消退款申请
            return [self PurchaseOrderUrlStr:@"CancelRefundApply"];
            break;
        case kClassMethod_RefundDetail: //获取退款单详情
            return [self PurchaseOrderUrlStr:@"GetRefundDetail"];
            break;
        case kClassMethod_ApplyReturn: //买家申请退货
            return [self PurchaseOrderUrlStr:@"ApplyReturn"];

            break;
        case kClassMethod_ReturnDetail: //获取退货单详情
            return [self PurchaseOrderUrlStr:@"GetReturnDetail"];
            break;
        case kClassMethod_CancelReturn: // 买家取消退货申请
            return [self PurchaseOrderUrlStr:@"CancelReturn"];
            break;
        case kClassMethod_OrderList: // 采购订单列表
            return [self PurchaseOrderUrlStr:@"GetOrderList"];
            break;

        case kClassMethod_CommitReturnLogistics: // 录入退货物流信息
            return [self PurchaseOrderUrlStr:@"CommitReturnLogistics"];
            break;

        case kClassMethod_UpdateQuantityToCart: //  更新购物车商品项数量
            return [self shoppingCartUrlStr:@"UpdateQuantityToCart"];
            break;
        case kClassMethod_DeletesFromCart: //删除多个购物车商品项目
            return [self shoppingCartUrlStr:@"DeletesFromCart"];
            break;
        case kClassMethod_CartsList: //购物车列表
            //            return [self  transPayUrlStr:@"GetCartsList"];
            return [self shoppingCartUrlStr:@"GetCartsList"];
            break;
        case kClassMethod_Go2ConfirmOrders: //由购物车跳转到订单列表确认页数据处理
            return [self shoppingCartUrlStr:@"Go2ConfirmOrders"];
            break;

#pragma mark-- 生成订单   ly -0903
        case kClassMethod_SubmitOrder:
            return [self PurchaseOrderUrlStr:@"SubmitOrder"];
            break;
        case kClassMethod_CloseTradingByOperator:
            return [self PurchaseOrderUrlStr:@"CloseTradingByOperator"];
            break;

#pragma mark-- 产品/服务/店铺收藏列表 lp- 0903

        case kClassMethod_GetFavorite: //收藏列表
            return [self favoriteUrlStr:@"GetFavorite"];
            break;
        case kClassMethod_RemoveCollection: //移除收藏
            return [self favoriteUrlStr:@"RemoveFavorite"];
            break;
#pragma mark-- lh 1014
        case kClassMethod_RemoveFavorites: //移除多个收藏
            return [self favoriteUrlStr:@"RemoveFavorites"];
            break;

#pragma mark-- 物流信息 lh 0904
        case kClassMethod_Express: //物流信息
            return [self OrderUrlStr:@"GetExpress"];
            break;
#pragma mark-- 确认收货
        case kClassMethod_ConfirmGoodsArrivaled: //物流信息
            return [self PurchaseOrderUrlStr:@"ConfirmGoodsArrivaled"];
            break;
#pragma mark-- 退款退货 lh -- 0907
        case kClassMethod_RefundList: //退款订单列表
            return [self PurchaseOrderUrlStr:@"GetRefundList"];
            break;
        case kClassMethod_ReturnList: //退货订单列表
            return [self PurchaseOrderUrlStr:@"GetReturnList"];
            break;

#pragma mark-- 天气/差违章 lp0909
        case kClassMethod_CheckViolation: //查违章
            return [self Uitl:@"CheckViolation"];
            break;
        case kClassMethod_Weather: //查天气
            return [self Uitl:@"Weather"];
            break;
#pragma mark-- 物流公司

        case kClassMethod_ExpressCompany: //物流公司
            return [self OrderUrlStr:@"GetExpressCompany"];
            break;

        case kClassMethos_BuildNewPayNumber://生成支付号
            return [self PurchaseOrderUrlStr:@"BuildNewPayNumber"];
            break;

#pragma mark-- 维保单 lp1118
        case kClassMethod_GetMaintOrders: //维保单列表
            return [self autoQAUrlStr:@"GetAutoMaintOrders"];
            break;
        case kClassMethod_ModifyMaintOrdersState: //修改维保单状态
            return [self autoQAUrlStr:@"ModifyMaintOrdersState"];
            break;
        case kClassMethod_FirmMaintOrder: //确认订单
            return [self autoQAUrlStr:@"FirmMaintOrder"];
            break;
        case kClassMethod_GetListByOrder: //申诉记录列表
            return [self policyUrlStr:@"GetListByOrder"];
            break;
        case kClassMethod_GetMaintOrdersDetails: //维保订单详情
            return [self autoQAUrlStr:@"GetMaintOrdersDetails"];
            break;
        case kClassMethod_Add: //申请维保
            return [self policyUrlStr:@"Add"];
            break;
        case kClassMethod_Cancel: //取消申诉
            return [self policyUrlStr:@"Cancel"];
            break;
        case kClassMethod_AgreeHandle: //同意申诉
            return [self policyUrlStr:@"AgreeHandle"];
            break;
        case kClassMethod_DisAgreeHandle: //不同意申诉
            return [self policyUrlStr:@"DisAgreeHandle"];
            break;
        case kClassMethod_UploadPictures: //图片上传
            return [self UploadpicUrlStr:@"UploadPictures"];
            break;
#pragma mark-- 消息问题
        case kClassMethod_GetQestionList: //问答列表
            return [self AutoMessageUrlStr:@"GetQestionList"];
            break;
        case kClassMethod_GetQestionDeatailsReply: //问答详情
            return [self AutoMessageUrlStr:@"GetQestionDeatailsReply"];
            break;
        case kClassMethod_AddQestion: //提问
            return [self AutoMessageUrlStr:@"AddQestion"];
            break;
        case kClassMethod_AddReply: //回复问答
            return [self AutoMessageUrlStr:@"AddReply"];
        case kClassMethod_MessageDetail: //消息详情
            return [self AutoMessageUrlStr:@"MessageDetail"];
        case kClassMethod_GetMessageListSum: //消息列表
            return [self AutoMessageUrlStr:@"GetMessageListSum"];
        case kClassMethod_DeleteMessage: //删除消息
            return [self AutoMessageUrlStr:@"DeleteMsg"];
        case kClassMethod_GetNoReadMessageCount: //未读消息数
            return [self AutoMessageUrlStr:@"GetNoReadMessageCount"];
        case kClassMethod_UpdateMessageRead: //未读消息数
            return [self AutoMessageUrlStr:@"UpdateMessageRead"];

#pragma mark-- 维保单支付
        case kClassMethod_CreatePayNumber: //预支付号
            return [self policyUrlStr:@"CreatePayNumber"];
            break;
        case kClassMethod_KPPay: //酷配支付
            return [self policyUrlStr:@"KPPay"];
            break;
        case kClassMethod_ThirdPay: //第三方支付
            return [self policyUrlStr:@"ThirdPay"];
            break;

        case kClassMethod_GetInsuranceCompany: //保险公司
            return [self newAccountsUrlStr:@"GetInsuranceCompany"];
            break;
        case kClassMethod_GetMyInsuranceCompany: //我的保险公司
            return [self newAccountsUrlStr:@"GetMyInsuranceCompany"];
            break;
        case kClassMethod_GetBrandAfterSaleService: //品牌售后
            return [self newAccountsUrlStr:@"GetBrandAfterSaleService"];
            break;
        case kClassMethod_GetMyBrandAfterSaleService: //我的品牌
            return [self newAccountsUrlStr:@"GetMyBrandAfterSaleService"];
            break;

        case kClassMethod_GetRoadRescueCompany: //道路救援
            return [self newAccountsUrlStr:@"GetRoadRescueCompany"];
            break;
        case kClassMethod_GetOilPriceByLocal: //油电站
            return [self oilUrlStr:@"GetOilPriceByLocal"];
            break;
        case kClassMethod_GetMemberScore: //获取会员等级、积分-3.2.1
            return [self newAccountsUrlStr:@"GetMemberScore"];
        case kClassMethod_MemberSignDay: //会员签到
            return [self newAccountsUrlStr:@"MemberSignDay"];
        case kClassMethod_GetMemberInfo: //会员信息
            return [self accountsUrlStr:@"GetMemberInfo"];
            break;

#pragma mark-- tz 2016.1.18

        case kClassMethod_SetHeadPic: //设置头像
            return [self accountsUrlStr:@"SetHeadPic"];
            break;
        case kClassMethod_SetNickName: //设置昵称
            return [self accountsUrlStr:@"SetNickName"];

            break;

        case kClassMethod_GetSummaryList: //未读消息总数
            return [self AutoMessageUrlStr:@"GetSummaryList"];

            break;

        case kClassMethod_UploadFiles:
            return [self UploadFileUrlStr:@"UploadFiles"];
            
#pragma mark -- 询价报价 ly2016.04.27
        case kClassMethod_SearchQuotationDocument://报价单列表
            return [self InquiryUrlStr:@"SearchQuotationDocument"];
            
        case kClassMethod_QueryQuotationDetail://报价单详情
            return [self InquiryUrlStr:@"QueryQuotationDetail"];
        
        case kClassMethod_AddInquiry://新增询价单
            return [self InquiryUrlStr:@"AddInquiry"];
        case kClassMethod_ChatUserInfo://获取用户头像和昵称
            return [self accountsUrlStr:@"GetChatUserInfo"];
            
        default:
            return nil;
            break;
    }
}

+ (NSString *) UploadFileUrlStr:(NSString *) str {
    return [NSString stringWithFormat:@"%@/UploadFile/%@",kURL_PREFIX,str];
}


+ (NSString *)urlStr:(NSString *)str {
    return [NSString stringWithFormat:@"%@%@", kURL_PREFIX, str];
}
// AutoService 服务相关
+ (NSString *)autoServiceurlStr:(NSString *)str {
    return [NSString stringWithFormat:@"%@AutoService/%@", kURL_PREFIX, str];
}
//广告和资讯
+ (NSString *)adsNewsUrlStr:(NSString *)str {
    return [NSString stringWithFormat:@"%@AdsNews/%@", kURL_PREFIX, str];
}
// Product 商品
+ (NSString *)ProductUrlStr:(NSString *)str {
    return [NSString stringWithFormat:@"%@Product/%@", kURL_PREFIX, str];
}

//账号相关

+ (NSString *)accountsUrlStr:(NSString *)str {
    return [NSString stringWithFormat:@"%@Accounts/%@", kURL_PREFIX, str];
}

+ (NSString *)newAccountsUrlStr:(NSString *)str {
    return [NSString stringWithFormat:@"%@Accounts/%@", kURL_PREFIX, str];
}

//首页推荐接口
+ (NSString *)appprosUrlStr:(NSString *)str {
    return [NSString stringWithFormat:@"%@apppros/%@", kURL_PREFIX, str];
}

//酷配宝
+ (NSString *)KPBUrlStr:(NSString *)str {
    return [NSString stringWithFormat:@"%@Kpb/%@",kURL_PREFIX,str];
}

//代金券
+ (NSString *)voucherUrlStr:(NSString *)str {
    return [NSString stringWithFormat:@"%@Voucher/%@", kURL_PREFIX, str];
}
//红包
+ (NSString *)cashCouponUrlStr:(NSString *)str {
    return [NSString stringWithFormat:@"%@CashCoupon/%@", kURL_PREFIX, str];
}

//产品相关
+ (NSString *)productUrlStr:(NSString *)str {
    return [NSString stringWithFormat:@"%@products/%@", kURL_PREFIX, str];
}

//收藏
+ (NSString *)favoriteUrlStr:(NSString *)str {
    return [NSString stringWithFormat:@"%@Favorite/%@", kURL_PREFIX, str];
}

//类别
+ (NSString *)categoryUrlStr:(NSString *)str {
    return [NSString stringWithFormat:@"%@Category/%@", kURL_PREFIX, str];
}

//购物车
+ (NSString *)shoppingCartUrlStr:(NSString *)str {
    return [NSString stringWithFormat:@"%@ShoppingCart/%@", kURL_PREFIX, str];
}
+ (NSString *)newShoppingCartUrlStr:(NSString *)str {
    return [NSString stringWithFormat:@"%@ShoppingCart/%@", kURL_PREFIX, str];
}
//收货地址
+ (NSString *)ConsignAddressCartUrlStr:(NSString *)str {
    return [NSString stringWithFormat:@"%@ConsignAddress/%@", kURL_PREFIX, str];
}
//车型品牌
+ (NSString *)CarUrlStr:(NSString *)str {
    return [NSString stringWithFormat:@"%@Car/%@", kURL_PREFIX, str];
}

//属性接口
+ (NSString *)PropertiesUrlStr:(NSString *)str {
    return [NSString stringWithFormat:@"%@Properties/%@", kURL_PREFIX, str];
}
//店铺接口
+ (NSString *)shopUrlStr:(NSString *)str {
    return [NSString stringWithFormat:@"%@Shop/%@", kURL_PREFIX, str];
}

+ (NSString *)shopManager:(NSString *)str {
    return [NSString stringWithFormat:@"%@ShopManager/%@", kURL_PREFIX, str];
}

//广告
+ (NSString *)ADUrlStr:(NSString *)str {
    return [NSString stringWithFormat:@"%@AppAD/%@", kURL_PREFIX, str];
}

//搜索
+ (NSString *)searchUrlStr:(NSString *)str {
    return [NSString stringWithFormat:@"%@Search/%@", kURL_PREFIX, str];
}
//运费
+ (NSString *)freightsUrlStr:(NSString *)str {
    return [NSString stringWithFormat:@"%@Freights/%@", kURL_PREFIX, str];
}

//短信邮件
+ (NSString *)SMSUrlStr:(NSString *)str {
    return [NSString stringWithFormat:@"%@SMS/%@", kURL_PREFIX, str];
}
//评论接口
+ (NSString *)appraiseUrlStr:(NSString *)str {
    return [NSString stringWithFormat:@"%@Appraise/%@", kURL_PREFIX, str];
}

//新api评论接口
+ (NSString *)appraiseNewUrlStr:(NSString *)str {
    return [NSString stringWithFormat:@"%@Appraise/%@", kURL_PREFIX, str];
}

//反馈升级
+ (NSString *)informUrlStr:(NSString *)str {
    return [NSString stringWithFormat:@"%@Inform/%@", kURL_PREFIX, str];
}

//订单
+ (NSString *)transPayUrlStr:(NSString *)str {
    return [NSString stringWithFormat:@"%@TransPay/%@", kURL_PREFIX, str];
}

//天气/违章
+ (NSString *)Uitl:(NSString *)str {
    return [NSString stringWithFormat:@"%@Uitl/%@", kURL_PREFIX, str];
}

//维保订单
+ (NSString *)autoQAUrlStr:(NSString *)str {
    return [NSString stringWithFormat:@"%@AutoQA/%@", kURL_PREFIX, str];
}
//申诉
+ (NSString *)policyUrlStr:(NSString *)str {
    return [NSString stringWithFormat:@"%@Policy/%@", kURL_PREFIX, str];
}

//图片上传
+ (NSString *)UploadpicUrlStr:(NSString *)str {
    return [NSString stringWithFormat:@"%@Uploadpic/%@", kURL_PREFIX, str];
}

//问答消息
+ (NSString *)AutoMessageUrlStr:(NSString *)str {
    return [NSString stringWithFormat:@"%@AutoMessage/%@", kURL_PREFIX, str];
}
+ (NSString *)AutoMsgUrlStr:(NSString *)str {
    return [NSString stringWithFormat:@"%@AutoMsg/%@", kURL_PREFIX, str];
}

+ (NSString *)oilUrlStr:(NSString *)str {
    return [NSString stringWithFormat:@"%@Oil/%@", kURL_PREFIX, str];
}

+ (NSString *)ManagementsUrlStr:(NSString *)str {
    return [NSString stringWithFormat:@"%@Managements/%@", kURL_PREFIX, str];
}

+ (NSString *)PurchaseOrderUrlStr:(NSString *)str {
    return [NSString stringWithFormat:@"%@PurchaseOrder/%@", kURL_PREFIX, str];
}

+ (NSString *)OrderUrlStr:(NSString *)str {
    return [NSString stringWithFormat:@"%@Order/%@", kURL_PREFIX, str];
}

/** 询价报价 */
+ (NSString *) InquiryUrlStr:(NSString *)str {
    return [NSString stringWithFormat:@"%@Inquiry/%@",kURL_PREFIX,str];
}

@end
