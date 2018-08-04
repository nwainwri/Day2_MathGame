//
//  AdditionQuestion.m
//  MathsGame
//
//  Created by Jamie on 2018-07-31.
//  Copyright © 2018 Jamie. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype)init {
    if (self = [super init]) {
        NSInteger firstNumber = arc4random_uniform(90) + 10;
        NSInteger secondNumber = arc4random_uniform(90) + 10;
        _startTime = [NSDate date];
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
    double total = [self.startTime timeIntervalSinceDate:self.endTime];
    return total;
}

@end