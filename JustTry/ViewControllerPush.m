//
//  ViewControllerPush.m
//  JustTry
//
//  Created by 蒋永昌 on 16/5/16.
//  Copyright © 2016年 蒋永昌. All rights reserved.
//

#import "ViewControllerPush.h"

@interface ViewControllerPush ()

@end

@implementation ViewControllerPush

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor cyanColor];
    
    // Do any additional setup after loading the view.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"tongzhi" object:nil];

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
