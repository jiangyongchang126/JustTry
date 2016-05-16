//
//  BlockView.m
//  JustTry
//
//  Created by 蒋永昌 on 16/5/14.
//  Copyright © 2016年 蒋永昌. All rights reserved.
//

#import "BlockView.h"

@implementation BlockView

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        [self addView];
    }
    return self;
}

- (void)addView{
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:@"进入酒店" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    btn.titleLabel.font = [UIFont systemFontOfSize:12];
    btn.layer.cornerRadius = 4;
    btn.layer.borderColor = [UIColor grayColor].CGColor;
    btn.layer.borderWidth = 1;
    btn.layer.masksToBounds = YES;
    [btn addTarget:self action:@selector(btnAction:) forControlEvents:UIControlEventTouchUpInside];

    [self addSubview:btn];
    
    [btn mas_makeConstraints:^(MASConstraintMaker *make) {
       
        make.center.equalTo(self);
        make.width.mas_equalTo(100);
        make.height.mas_equalTo(100);
        
    }];
    
}

- (void)btnAction:(UIButton *)sender{
    
    if (self.myBlock) {
        
        self.myBlock();
    }
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
