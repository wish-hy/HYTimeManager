# HYTimeManager
一个简单的时间管理类 使用类即可获取系统当前时间 系统具体日期 具体星期等;时间戳转换成时间以及时间转换成时间戳

## Example

### 获取当前时间
```
  [HYTimeManager getNowTimeWithDateFormat:@"YYYY-MM-dd HH:mm:ss"];
```

### 获取当前日期天数
```
  [HYTimeManager getDayOfNow]
```

### 获取当前星期几
```
  [HYTimeManager getWeakDayOfNow]
```

### 时间转换成时间戳    
```
  [HYTimeManager timeToTimeStamp:[HYTimeManager getNowTimeWithDateFormat:@"YYYY-MM-dd HH:mm:ss"] DateFormat:@"YYYY-MM-dd HH:mm:ss" withMs:YES]
```

### 获取当前时间戳
```
  [HYTimeManager getTimeStampOfNowWithMs:YES]
```
    
暂时想到只有这些方法,以后会及时更新。
