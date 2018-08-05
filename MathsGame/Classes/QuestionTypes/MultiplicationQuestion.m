//
//  MultiplicationQuestion.m
//  MathsGame
//
//  Created by Nathan Wainwright on 2018-08-04.
//  Copyright © 2018 Jamie. All rights reserved.
//

#import "MultiplicationQuestion.h"

@implementation MultiplicationQuestion

- (instancetype)init {
    if (self = [super init]) {
        [self generateQuestion];
    }
    return self;
}

- (void)generateQuestion {
    // set super.answer here
    // set super.question here
    super.question = [NSString stringWithFormat:@"What is the product of %lu times %lu ?", super.leftValue, super.rightValue];
    super.answer = super.leftValue * super.rightValue;
    
}
@end
