//
//  TableViewController.m
//  JustTry
//
//  Created by 蒋永昌 on 16/5/20.
//  Copyright © 2016年 蒋永昌. All rights reserved.
//

#import "TableViewController.h"
#import "TableView.h"
#import "Masonry.h"

@interface TableViewController ()

{
    TableView *_tableView;
}

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"loading_bg-3"]];
    
    
    // Do any additional setup after loading the view.
}

- (void)add{
    
    [super add];
    
    _tableView = [[TableView alloc]initWithFrame:CGRectZero style:UITableViewStylePlain];
    
    [self.view addSubview:_tableView];

}

- (void)updateUI{
    
    [super updateUI];
    
    
    [_tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.right.left.equalTo(self.view);
        make.top.equalTo(self.view).offset(64);
        make.bottom.equalTo(self.view);
        
    }];

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
