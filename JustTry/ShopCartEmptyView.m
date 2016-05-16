//
//  ShopCartEmptyView.m
//  XAExchange
//
//  Created by 全程恺 on 16/1/7.
//  Copyright © 2016年 全程恺. All rights reserved.
//

#import "ShopCartEmptyView.h"

@implementation ShopCartEmptyView

- (instancetype)initWithTarget:(id)target
{
    if (self = [super init]) {
        
        
        
        UIButton *tipBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [tipBtn setTitle:@"进入商城" forState:UIControlStateNormal];
        [tipBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        tipBtn.titleLabel.font = [UIFont systemFontOfSize:12];
        tipBtn.layer.cornerRadius = 4;
        tipBtn.layer.borderColor = [UIColor grayColor].CGColor;
        tipBtn.layer.borderWidth = 1;
        tipBtn.layer.masksToBounds = YES;
        [self addSubview:tipBtn];
        

        if ([target respondsToSelector:@selector(enterMallAction)]) {
            
            [tipBtn addTarget:target action:@selector(enterMallAction) forControlEvents:UIControlEventTouchUpInside];
        }
        

        [tipBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.size.mas_equalTo(CGSizeMake(70, 23));
            make.centerY.equalTo(self);
//            make.right.equalTo(self.mas_centerX).offset(-10);
            make.centerX.equalTo(self);
        }];
        
        
    }
    
    return self;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
