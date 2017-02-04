//
//  CollegeModel.m
//  test_MVC
//
//  Created by hc on 2017/1/10.
//  Copyright © 2017年 hc. All rights reserved.
//

#import "CollegeModel.h"

@implementation CollegeModel

- (instancetype)initWithCollegeName:(NSString *)collegeName collegeEnglishName:(NSString *)englishName numberOfStudent:(NSInteger)studentNumber {
    self = [super init];
    if (self) {
        _collegeName = collegeName;
        _collegeEnglishName = englishName;
        _numberOfStudent = studentNumber;
        
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super init];
    if (self) {
        _collegeName = [aDecoder decodeObjectForKey:@"collegeName"];
        _collegeEnglishName = [aDecoder decodeObjectForKey:@"collegeEnglishName"];
        _numberOfStudent = [aDecoder decodeIntegerForKey:@"numberOfStudent"];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.collegeName forKey:@"collegeName"];
    [aCoder encodeObject:self.collegeEnglishName forKey:@"collegeEnglishName"];
    [aCoder encodeInteger:self.numberOfStudent forKey:@"numberOfStudent"];
    
}


@end
