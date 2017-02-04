//
//  SuperStarCell.m
//  test_MVC
//
//  Created by hc on 2017/1/12.
//  Copyright © 2017年 hc. All rights reserved.
//

#import "SuperStarCell.h"
#import "Masonry.h"
@implementation SuperStarCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.btn = [UIButton buttonWithType:0];
        self.btn.backgroundColor = [UIColor brownColor];
        [self.btn setTitle:@"...." forState:UIControlStateNormal];
        [self.btn addTarget:self action:@selector(superBtnAction:) forControlEvents:UIControlEventTouchUpInside];
        //        self.btn.frame = CGRectMake(0, 0, 100, 30);
        [self.contentView addSubview:_btn];
        [self.btn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(10);
            make.left.mas_equalTo(10);
//            make.size.mas_equalTo(CGSizeMake(100, 30));
            make.right.bottom.mas_equalTo(-10);
        }];

    }
    return self;
}




- (void)superBtnAction:(id)sender {
    !self.superBlock ? : self.superBlock();
}
@end
