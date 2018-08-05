//
//  AdditionQuestion.m
//  MathsGame
//
//  Created by Jamie on 2018-07-31.
//  Copyright © 2018 Jamie. All rights reserved.
//

#import "Question.h"

@implementation Question

- (instancetype)init {
    if (self = [super init]) {
        NSInteger firstNumber = arc4random_uniform(90) + 10;
        NSInteger secondNumber = arc4random_uniform(90) + 10;
        _leftValue = 0;
        _rightValue = 0;
        _startTime = [NSDate date];
        _endTime = [[NSDate alloc] init];
        _question = [NSString stringWithFormat:@"What is the sum of %li and %li?", (long)firstNumber, (long)secondNumber];
        _answer = firstNumber + secondNumber;
        
        
    }
    return self;
}

// overriding getter
- (NSInteger)answer {
    _endTime = [NSDate date];
    return _answer;
}

- (NSTimeInterval)answerTime{
    return [self.endTime timeIntervalSinceDate:self.startTime];
}


//- (NSString *)timeOutput
//{
//    NSTimeInterval totalTime = 0;
//    for (int i=0; i< [self.questions count]; i++) {
//        Question * question = [self.questions objectAtIndex:i];
//        totalTime += [question answerTime];
//    }
//    NSTimeInterval averageTime = totalTime /[self.questions count];
//    return [NSString stringWithFormat:@"total time: %fs, average time: %fs", totalTime, averageTime];
//}

@end
