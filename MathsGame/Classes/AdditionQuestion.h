//
//  AdditionQuestion.h
//  MathsGame
//
//  Created by Jamie on 2018-07-31.
//  Copyright © 2018 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AdditionQuestion : NSObject

@property (nonatomic, assign) NSString* question;
@property (nonatomic, assign) NSInteger answer;

@property (nonatomic, assign) NSDate* startTime;
@property (nonatomic, assign) NSDate* endTime;


- (NSTimeInterval)answerTime;

@end
