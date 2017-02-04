//
//  ViewController.m
//  test_MVC
//
//  Created by hc on 2017/1/10.
//  Copyright © 2017年 hc. All rights reserved.
//

#import "ViewController.h"
#import "CollegeModel.h"
#import "CollegeView.h"
#import "Masonry.h"
#import "SuperStarController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    CollegeView *view = [[CollegeView alloc] init];
    view.frame = CGRectMake(0, 0, 300, 200);
    [self.view addSubview:view];
    
    UIButton *btn = [UIButton buttonWithType:0];
    [btn setTitle:@"Push" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor brownColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    [btn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(20);
        make.bottom.mas_equalTo(-20);
        make.size.mas_equalTo(CGSizeMake(100, 30));
    }];
}


- (void)btnAction {
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:[SuperStarController new]];
    [self presentViewController:nav animated:YES completion:nil];
}

@end
