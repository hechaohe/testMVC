//
//  CollegeModel.h
//  test_MVC
//
//  Created by hc on 2017/1/10.
//  Copyright © 2017年 hc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CollegeModel : NSObject <NSCoding>

@property (nonatomic,copy) NSString *collegeName;
@property (nonatomic,copy) NSString *collegeEnglishName;
@property (nonatomic,assign) NSInteger numberOfStudent;

- (instancetype)initWithCollegeName:(NSString *)collegeName collegeEnglishName:(NSString *)englishName numberOfStudent:(NSInteger)studentNumber;

@end
