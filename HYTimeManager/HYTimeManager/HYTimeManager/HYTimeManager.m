//
//  HYTimeManager.m
//  HYTimeManager
//
//  Created by hy on 2018/9/13.
//  Copyright © 2018年 hy. All rights reserved.
//

#import "HYTimeManager.h"

@implementation HYTimeManager


//根据格式获取当前时间
+ (NSString *)getNowTimeWithDateFormat:(NSString *)dateFormat
{
    NSDate *date = [[NSDate alloc] init];
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    formatter.dateFormat = dateFormat;
    NSString *dateStr = [formatter stringFromDate:date];
    
    return dateStr;
}

// 获取当前天数
+ (NSString *)getDayOfNow
{
    // 获取date格式时间的年  月  日
    NSDateComponents *comp = [self getComponents];
    return [NSString stringWithFormat:@"%ld",(long)[comp day]];
}

// 获取当前月份
+ (NSString *)getMonthOfNow
{
    NSDateComponents *comp = [self getComponents];
    return [NSString stringWithFormat:@"%ld",(long)[comp month]];
}

// 获取当前年份
+ (NSString *)getYearOfNow
{
    NSDateComponents *comp = [self getComponents];
    return [NSString stringWithFormat:@"%ld",(long)[comp year]];
}

// 获取当前星期
+ (NSString *)getWeakDayOfNow
{
    NSDateComponents *components = [[NSCalendar currentCalendar] components:NSCalendarUnitYear| NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitWeekOfYear |  NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond | NSCalendarUnitWeekday | NSCalendarUnitWeekdayOrdinal fromDate:[NSDate date]];
    
    NSString *weekStr = nil;
    switch ([components weekday]) {
        case 2:
            weekStr = @"星期一";
            break;
        case 3:
            weekStr = @"星期二";
            break;
        case 4:
            weekStr = @"星期三";
            break;
        case 5:
            weekStr = @"星期四";
            break;
        case 6:
            weekStr = @"星期五";
            break;
        case 7:
            weekStr = @"星期六";
            break;
        case 1:
            weekStr = @"星期天";
            break;
        default:
            break;
    }
    return weekStr;
}

// 获取NSDateComponents对象
+(NSDateComponents *)getComponents
{
    NSDateComponents *comp = [[NSCalendar currentCalendar] components:(NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay) fromDate:[NSDate date]];
    return comp;
}

//时间转化成时间戳 yyyy年MM月dd日 @"YYYY-MM-dd HH:mm:ss"
+ (NSString *)timeToTimeStamp:(NSString *)stringTime DateFormat:(NSString *)dateFormat withMs:(BOOL)isMs
{
    NSDateFormatter *dfmatter = [[NSDateFormatter alloc]init];
    dfmatter.dateFormat = dateFormat;
    NSDate *date = [dfmatter dateFromString:stringTime];
    NSTimeInterval dateStamp = [date timeIntervalSince1970];
    if (isMs) {
        dateStamp = [date timeIntervalSince1970]*1000;
    }
    NSString *timeSp = [NSString stringWithFormat:@"%ld", (long)dateStamp];
    return timeSp;
}
//时间戳转化成时间
+(NSString *)timeStampToTime:(NSString *)timeStamp DateFormat:(NSString *)dateFormat withMs:(BOOL)isMs
{
    NSString *timeStr = timeStamp;
    NSTimeInterval dateStamp = timeStr.doubleValue;
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    formatter.dateFormat = dateFormat;
    if (isMs) {
        dateStamp = dateStamp / 1000;
    }
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:dateStamp];
    return [formatter stringFromDate:date];
}


// 获取当前时间戳
+ (NSString *)getTimeStampOfNowWithMs:(BOOL)Ms
{
   NSString *time = [self getNowTimeWithDateFormat:@"YYYY-MM-dd HH:mm:ss"];
    
    return [self timeToTimeStamp:time DateFormat:@"YYYY-MM-dd HH:mm:ss" withMs:Ms];
    
}


@end
