//
//  ViewController.m
//  JustTry
//
//  Created by 蒋永昌 on 16/5/13.
//  Copyright © 2016年 蒋永昌. All rights reserved.
//

#import "ViewController.h"
#import "ViewControllerPush.h"
#import "ShopCartEmptyView.h"
#import "BlockView.h"

@interface ViewController ()

{
    
}

@property(nonatomic,strong)ShopCartEmptyView *emptyView;
@property(nonatomic,strong)BlockView *myBlockView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 汉子转拼音(加音标,不加音标)
   NSLog(@"%@",[self transform:@"蒋永昌"]);
    
// ShopCartEmptyView
    [self addShopChatEmptyView];
    
    
// BlockView
    [self addBlockView];
    
    
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.backgroundColor = [UIColor grayColor];
    [btn setTitle:@"jiangyongchang" forState:UIControlStateNormal];
    
    [btn setImage:[UIImage imageNamed:@"icon_ucheck"] forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:@"icon_checked"] forState:UIControlStateSelected];
    btn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    btn.titleLabel.font = [UIFont boldSystemFontOfSize:14];
    btn.titleEdgeInsets = UIEdgeInsetsMake(0, 7, 0, 0);
    [btn addTarget:self action:@selector(btnAction:) forControlEvents:UIControlEventTouchUpInside];

    
    [self.view addSubview:btn];
    
    [btn mas_makeConstraints:^(MASConstraintMaker *make) {
       
        make.center.equalTo(self.view);
        make.width.mas_equalTo(200);
        make.height.mas_equalTo(@29).priorityHigh();
        
    }];
    

    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)btnAction:(UIButton *)sender{
    
    sender.selected = !sender.selected;
    
    
    ViewControllerPush *VCPush = [[ViewControllerPush alloc]init];
    
    [self.navigationController pushViewController:VCPush animated:YES];
    
    
}

- (void)hello{
    
    NSLog(@"ViewController hello");
}

- (void)addShopChatEmptyView{
    
    self.emptyView = [[ShopCartEmptyView alloc]initWithTarget:self];
    self.emptyView.backgroundColor = [UIColor grayColor];
    
    [self.view addSubview:self.emptyView];
    
    [self.emptyView mas_makeConstraints:^(MASConstraintMaker *make) {
       
        make.top.left.equalTo(self.view).offset(64);

        make.width.mas_equalTo(100);
        make.height.mas_equalTo(100);
        
    }];
    
}

- (void)addBlockView{
    
    self.myBlockView = [[BlockView alloc]init];
    self.myBlockView.backgroundColor = [UIColor cyanColor];
    
    __unsafe_unretained ViewController *this = self;
    
    self.myBlockView.myBlock = ^(){
        
        [this enterTheHotel];
        this -> _myBlockView.backgroundColor = [UIColor redColor];
    };
    
    [self.view addSubview:self.myBlockView];
    
    [self.myBlockView mas_makeConstraints:^(MASConstraintMaker *make) {
       
        make.top.equalTo(self.emptyView);
        make.left.equalTo(self.emptyView.mas_right).offset(10);
        make.width.mas_equalTo(100);
        make.height.mas_equalTo(100);

    }];
    

    
}

// 进入商城响应事件
- (void)enterMallAction{
    
    NSLog(@"点击了进入商城");
}

- (void)enterTheHotel{
    
    NSLog(@"进入了酒店");
}

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



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
