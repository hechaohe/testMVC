//
//  SuperStarCell.h
//  test_MVC
//
//  Created by hc on 2017/1/12.
//  Copyright © 2017年 hc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SuperStarCell : UITableViewCell
@property (nonatomic,strong) UIButton *btn;
@property (nonatomic,copy) void (^superBlock)();
@end
