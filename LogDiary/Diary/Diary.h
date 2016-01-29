//
//  Diary.h
//  LogDiary
//
//  Created by 杨承传 on 15/10/13.
//  Copyright © 2015年 杨承传. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DiaryEnum.h"


@interface Diary : NSObject
/*
 *单例
 */
+ (instancetype)DiaryInstance;

/*
 *当前语言是否是中文
 */
+ (BOOL)isChinese;

/*
 *硬件设备
 */
-(DeviceType)deviceType;

/*
 *系统版本
 */
-(float)deviceVersion;

@end
