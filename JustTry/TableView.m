//
//  TableView.m
//  JustTry
//
//  Created by 蒋永昌 on 16/5/20.
//  Copyright © 2016年 蒋永昌. All rights reserved.
//

#import "TableView.h"
#import "TableViewCell.h"

@implementation TableView

-(instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style{
    
    if (self = [super initWithFrame:frame style:style]) {
        
        
        self.delegate = self;
        self.dataSource = self;
                self.separatorStyle = UITableViewCellSeparatorStyleNone;
        self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:.6];

    }
    
    return self;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 5;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return 80;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    if (!cell) {
        
        cell = [[TableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
        
    }
    
    return cell;
    
}



                           


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
