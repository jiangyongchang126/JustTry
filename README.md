# JustTry
班门弄斧了,就是在学习中的一些小代码! 

## 买点一: 汉子转拼音
```
- (NSString *)transform:(NSString *)chinese{
    //将NSString装换成NSMutableString
    NSMutableString *pinyin = [chinese mutableCopy];
    //将汉字转换为拼音(带音标)
    CFStringTransform((__bridge CFMutableStringRef)pinyin, NULL, kCFStringTransformMandarinLatin, NO);
    NSLog(@"%@", pinyin);
    //去掉拼音的音标
    CFStringTransform((__bridge CFMutableStringRef)pinyin, NULL, kCFStringTransformStripCombiningMarks, NO);
    NSLog(@"%@", pinyin);
    //返回最近结果
    return pinyin;
}
```
## 买点二: View上的按钮响应Controller中的事件
 
 两种方法: Block 和target respondsToSelector 详见代码
```

- (void)btnAction:(UIButton *)sender{
    
    if (self.myBlock) {
        
        self.myBlock();
    }
}


        if ([target respondsToSelector:@selector(enterMallAction)]) {
            
            [tipBtn addTarget:target action:@selector(enterMallAction) forControlEvents:UIControlEventTouchUpInside];
        }
        

```
