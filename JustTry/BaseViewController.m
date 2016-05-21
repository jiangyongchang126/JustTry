//
//  BaseViewController.m
//  JustTry
//
//  Created by 蒋永昌 on 16/5/16.
//  Copyright © 2016年 蒋永昌. All rights reserved.
//

#import "BaseViewController.h"
#import "Masonry.h"

@interface BaseViewController ()

@end

@implementation BaseViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    

    [self add];
    [self updateUI];

}

- (void)add{
    
    UIImageView *bgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"loading_bg-3"]];
    [self.view addSubview:bgView];
    
    [bgView mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.edges.equalTo(self.view);
    }];

}

- (void)updateUI{
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
