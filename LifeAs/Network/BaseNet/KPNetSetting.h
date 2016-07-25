//
//  KPNetSetting.h
//  kuparts3
//
//  Created by lyleKP on 16/1/27.
//  Copyright © 2016年 lyleLH. All rights reserved.
//

#ifndef KPNetSetting_h
#define KPNetSetting_h


#ifndef kOnlineEnvironment
//#define kOnlineEnvironment
#endif

#ifdef kOnlineEnvironment

#define kURL_PREFIX  @"http://api.kuparts.com/api/"
#define xmppServerHost @"183.62.113.81"
#define JPushEnv @"Production"

#else

#define kURL_PREFIX  @"http://192.168.1.21:8090/api/"
#define xmppServerHost @"10.1.1.4"
#define JPushEnv @"Development"

#endif

#define JIDSource @"app"   // JID source


/** 历史环境  */
//#define kURL_PREFIX  @"http://api1.kuparts.com/api/"
//#define kURL_PREFIX  @"http://apishop1.kuparts.com/api/"
//#define kURL_PREFIX  @"http://123.103.16.36:8000/api/"
//#define kURL_PREFIX  @"http://192.168.1.110:8091/api/"
//#define kURL_PREFIX @"http://172.16.13.32:8091/api/"
//#define kURL_PREFIX  @"http://10.1.21.30:9999/api/"
//#define kURL_PREFIX  @"http://192.168.1.110:8091/api/"

#endif /* KPNetSetting_h */
