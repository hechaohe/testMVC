//
//  SuperStarController.m
//  test_MVC
//
//  Created by hc on 2017/1/10.
//  Copyright © 2017年 hc. All rights reserved.
//

#import "SuperStarController.h"
#import "SuperStarCell.h"
@interface SuperStarController ()

@end

@implementation SuperStarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Dismiss" style:UIBarButtonItemStyleDone target:self action:@selector(pop)];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Save" style:UIBarButtonItemStyleDone target:self action:@selector(save)];
    
    [self.tableView registerClass:[SuperStarCell class] forCellReuseIdentifier:@"SuperStarCell"];
}
- (void)pop {
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (void)save {
    NSLog(@"save");
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 3;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 80;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    SuperStarCell *cell = [tableView dequeueReusableCellWithIdentifier:@"SuperStarCell" forIndexPath:indexPath];
    
    cell.superBlock = ^{
        NSLog(@"haha");
    };
    
    return cell;
    
    
    
 
    
  
    
    
}




@end
