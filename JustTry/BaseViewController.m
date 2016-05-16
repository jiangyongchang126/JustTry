//
//  BaseViewController.m
//  JustTry
//
//  Created by 蒋永昌 on 16/5/16.
//  Copyright © 2016年 蒋永昌. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidAppear:(BOOL)animated{
    
//    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(hello) name:@"tongzhi" object:nil];
}

- (void)hello{
    
    NSLog(@"hello");
    
}

- (void)dealloc{
    
    [[NSNotificationCenter defaultCenter] removeObserver:self];

}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(hello) name:@"tongzhi" object:nil];

    // Do any additional setup after loading the view.
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
