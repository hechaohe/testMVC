//
//  CollegeView.m
//  test_MVC
//
//  Created by hc on 2017/1/10.
//  Copyright © 2017年 hc. All rights reserved.
//

#import "CollegeView.h"
#import "CollegeModel.h"
#import "Masonry.h"
@implementation CollegeView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        
        
        
        _model = [[CollegeModel alloc] initWithCollegeName:@"北大" collegeEnglishName:@"PekingUniversity" numberOfStudent:10000];
        
        self.label = [[UILabel alloc] init];
        self.label.text = [NSString stringWithFormat:@"%@,%@,%ld",_model.collegeName,_model.collegeEnglishName,_model.numberOfStudent];
        self.label.backgroundColor = [UIColor lightGrayColor];
        self.label.textAlignment = NSTextAlignmentCenter;
        self.label.textColor = [UIColor blackColor];
        [self addSubview:_label];
        [self.label mas_makeConstraints:^(MASConstraintMaker *make) {
            make.center.mas_equalTo(self.center);
//            make.size.mas_equalTo(CGSizeMake(200, 30));
            make.left.right.mas_equalTo(0);
            make.size.height.mas_equalTo(30);
        }];
    }
    return self;
}

@end
