
//
//  DiaryMacro.h
//  LogDiary
//
//  Created by 杨承传 on 15/10/13.
//  Copyright © 2015年 杨承传. All rights reserved.
//

#ifndef DiaryMacro_h
#define DiaryMacro_h


//十六进制颜色值
#define HEXCOLOR(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]
//RGB
#define RGBCOLOR(r,g,b)                     [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:1.0]

//屏宽 高
#define KSWindowHeight  [UIScreen mainScreen].bounds.size.height
#define KSWindowWidth  [UIScreen mainScreen].bounds.size.width

#endif
