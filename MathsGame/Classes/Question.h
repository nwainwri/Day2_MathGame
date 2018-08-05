//
//  AdditionQuestion.h
//  MathsGame
//
//  Created by Jamie on 2018-07-31.
//  Copyright © 2018 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject

@property NSString* question;
@property NSInteger answer;

@property NSDate* startTime;
@property NSDate* endTime;

@property NSInteger rightValue;
@property NSInteger leftValue;



- (NSTimeInterval)answerTime;

- (void)generateQuestion;

@end
