//
//  BlockView.h
//  JustTry
//
//  Created by 蒋永昌 on 16/5/14.
//  Copyright © 2016年 蒋永昌. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Masonry.h"

typedef void(^MyBlock)(void);

@interface BlockView : UIView

@property(nonatomic,copy)MyBlock myBlock;

//@property(nonatomic,copy)void (^YourBlock)(void);

@end
