//
//  ViewController.m
//  JustTry
//
//  Created by 蒋永昌 on 16/5/13.
//  Copyright © 2016年 蒋永昌. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+ImageTitleSpacing.h"
#import "ShopCartEmptyView.h"
#import "BlockView.h"
#import "TableViewController.h"

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
    
    // 哈哈哈哈👌
    NSLog(@"nidayede");
// BlockView
    [self addBlockView];
    
    
    [self addBtn];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)addBtn{
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.backgroundColor = [UIColor grayColor];
    [btn setTitle:@"jiangyongchanghhhhh" forState:UIControlStateNormal];
    
    [btn setImage:[UIImage imageNamed:@"icon_ucheck"] forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:@"icon_checked"] forState:UIControlStateSelected];
    btn.titleLabel.font = [UIFont boldSystemFontOfSize:14];

    // 水平
    btn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    btn.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0);
    
    // 竖直
//    btn.contentVerticalAlignment = UIControlContentVerticalAlignmentTop;
//    btn.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, -50);
//    btn.titleEdgeInsets = UIEdgeInsetsMake(15, -10, 0, 0);
    
    [btn addTarget:self action:@selector(btnAction:) forControlEvents:UIControlEventTouchUpInside];
    
    CGSize size = [@"jiangyongchang" sizeWithFont:btn.titleLabel.font];
    
    
    CGFloat width = [btn.titleLabel.text sizeWithFont:btn.titleLabel.font constrainedToSize:CGSizeMake(1000, 42)].width;
    
    
    [self.view addSubview:btn];
    
    [btn mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.center.equalTo(self.view);
        make.width.mas_equalTo(width + 15 +10);
        make.height.mas_equalTo(42);
        
    }];
    
    
    //
    UIButton *btn2 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn2.backgroundColor = [UIColor grayColor];
    
    [btn2 setTitle:@"jiang" forState:UIControlStateNormal];
    [btn2 setImage:[UIImage imageNamed:@"icon_information"] forState:UIControlStateNormal];
//    [btn2 setImage:[UIImage imageNamed:@"icon_checked"] forState:UIControlStateSelected];
    
    
    [btn2 layoutButtonWithEdgeInsetsStyle:MKButtonEdgeInsetsStyleRight imageTitleSpace:20];
    [self.view addSubview:btn2];
    
    
    [btn2 addTarget:self action:@selector(btnAction:) forControlEvents:UIControlEventTouchUpInside];
    
    [btn2 mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.equalTo(btn);
        make.top.equalTo(btn.mas_bottom).offset(10);
        make.width.mas_equalTo(70);
        //        make.height.mas_equalTo(20);
    }];
    
    
    UIButton *btn3 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn3.backgroundColor = [UIColor grayColor];
    
    [btn3 setTitle:@"jiang" forState:UIControlStateNormal];
    [btn3 setImage:[UIImage imageNamed:@"icon_btn_nogou"] forState:UIControlStateNormal];
    [btn3 setImage:[UIImage imageNamed:@"icon_btn_gou"] forState:UIControlStateSelected];
    
    
    [btn3 layoutButtonWithEdgeInsetsStyle:MKButtonEdgeInsetsStyleLeft imageTitleSpace:5];
    [self.view addSubview:btn3];
    [btn3 addTarget:self action:@selector(btnAction:) forControlEvents:UIControlEventTouchUpInside];
    
    [btn3 mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.right.equalTo(btn);
        make.top.equalTo(btn2.mas_bottom).offset(10);
        make.width.mas_equalTo(80);
                make.height.mas_equalTo(30);
    }];
    
    
    
    UIButton *btn4 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn4.backgroundColor = [UIColor grayColor];
    
    [btn4 setTitle:@"jiang" forState:UIControlStateNormal];
    [btn4 setImage:[UIImage imageNamed:@"icon_ucheck"] forState:UIControlStateNormal];
    [btn4 setImage:[UIImage imageNamed:@"icon_checked"] forState:UIControlStateSelected];
    
    
    [btn4 layoutButtonWithEdgeInsetsStyle:MKButtonEdgeInsetsStyleTop imageTitleSpace:10];
    [self.view addSubview:btn4];
    [btn4 addTarget:self action:@selector(btnAction:) forControlEvents:UIControlEventTouchUpInside];
    
    [btn4 mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.equalTo(btn);
        make.top.equalTo(btn3.mas_bottom).offset(10);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(40);
    }];
    

}

- (void)btnAction:(UIButton *)sender{
    
    sender.selected = !sender.selected;
    
    
}

- (void)hello{
    
    NSLog(@"ViewController hello,kkkkkkk");
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
    
    TableViewController *tableVC = [[TableViewController alloc]init];
    
    [self.navigationController pushViewController:tableVC animated:YES];
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
