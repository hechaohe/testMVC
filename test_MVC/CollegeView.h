//
//  CollegeView.h
//  test_MVC
//
//  Created by hc on 2017/1/10.
//  Copyright © 2017年 hc. All rights reserved.
//

#import <UIKit/UIKit.h>
@class CollegeModel;
@interface CollegeView : UIView
@property (nonatomic,strong) UILabel *label;
@property (nonatomic,strong) CollegeModel *model;
@end
