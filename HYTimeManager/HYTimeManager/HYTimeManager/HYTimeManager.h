//
//  HYTimeManager.h
//  HYTimeManager
//
//  Created by hy on 2018/9/13.
//  Copyright © 2018年 hy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HYTimeManager : NSObject
/**************************** 获取当前时间 ******************************/
/**
 * 根据格式获取当前时间字符串
 * @"YYYY年MM月dd日 HH:mm:ss"  大H 24小时制
 * @"YYYY年MM月dd日 hh:mm:ss"  小h 12小时制
 * @"YYYY年MM月dd日"
 * @"HH:mm:ss"
 * @"YYYY-MM-dd HH:mm:ss"
 * @"YYYY-MM-dd"
 * @"HH:mm:ss"
 */
+ (NSString *)getNowTimeWithDateFormat:(NSString *)dateFormat;

// 获取当前时间戳
+ (NSString *)getTimeStampOfNowWithMs:(BOOL)Ms;

/**
 * 获取当前天数
 */
+ (NSString *)getDayOfNow;


/**
 * 获取当前月份
 */
+ (NSString *)getMonthOfNow;


/**
 * 获取当前年份
 */
+ (NSString *)getYearOfNow;


/**
 * 获取当前星期
 */
+ (NSString *)getWeakDayOfNow;


/**
 * 获取NSDateComponents对象
 */
+(NSDateComponents *)getComponents;

/**************************** 时间与时间戳转换 ******************************/

/**
 * 时间转化成时间戳
 * stringTime 传入的时间字符串
 * dateFormat 传入的日期格式  @"YYYY-MM-dd HH:mm:ss"
 * isMs       是否转换成毫秒
 */
+ (NSString *)timeToTimeStamp:(NSString *)stringTime DateFormat:(NSString *)dateFormat withMs:(BOOL)isMs;


/**
 * 时间戳转化成时间
 * timeStamp  传入的时间戳
 * dateFormat 选择将要转换的时间字符串格式 @"YYYY-MM-dd HH:mm:ss"
 * isMs       时间戳是否毫秒
 */
+(NSString *)timeStampToTime:(NSString *)timeStamp DateFormat:(NSString *)dateFormat withMs:(BOOL)isMs;


@end
