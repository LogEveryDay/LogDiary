//
//  Diary.m
//  LogDiary
//
//  Created by 杨承传 on 15/10/13.
//  Copyright © 2015年 杨承传. All rights reserved.
//

#import "Diary.h"
#import <sys/sysctl.h>


@implementation Diary

#pragma mark 单例对象
+ (instancetype)DiaryInstance{
    
    static Diary *shareDiary;
    static dispatch_once_t predicate;
    dispatch_once(&predicate, ^{
        shareDiary = [[self alloc] init];
    });
    return shareDiary;
}

#pragma mark 中文判断
+ (BOOL)isChinese
{
    NSArray *languages = [NSLocale preferredLanguages];
    NSString *currentLanguage = [languages objectAtIndex:0];
    NSString* deviceType = [UIDevice currentDevice].model;
    
    if([[[UIDevice currentDevice]systemVersion]floatValue]>=9.0&&[deviceType isEqualToString:@"iPhone"]){
        
        return [currentLanguage isEqualToString:@"zh-Hans-CN"];
    }
    return [currentLanguage isEqualToString:@"zh-Hans"];
    
}
#pragma mark 设备类型
- (DeviceType)deviceType{
    
    NSString *deviceType = [[UIDevice currentDevice] model];
    if([deviceType isEqualToString:@"iPod"]) {
        return DeviceTypeIpod;
    }else if ([deviceType isEqualToString:@"iPad"]){
        return DeviceTypeiPad;
    }
    return DeviceTypeiPhone;
}
#pragma mark 系统版本
-(float)deviceVersion{
    
    float version = [UIDevice currentDevice].systemVersion.floatValue;
    return version;
}

@end
