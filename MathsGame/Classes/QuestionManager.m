//
//  QuestionManager.m
//  MathsGame
//
//  Created by Nathan Wainwright on 2018-08-04.
//  Copyright © 2018 Jamie. All rights reserved.
//

#import "QuestionManager.h"
#import "Question.h"


@implementation QuestionManager


- (instancetype)init
{
    self = [super init];
    if (self) {
        _questionsArray = [[NSMutableArray alloc] init];
    }
    return self;
}

//- (NSString *)timeOutput{
//    return [NSString stringWithFormat:@"TOTAL TIME: XXs, AVERAGE TIME: XXs"];
//}

- (NSString *)timeOutput
{
    NSTimeInterval totalTime = 0;
    for (int i=0; i< [self.questionsArray count]; i++) {
        Question * question = [self.questionsArray objectAtIndex:i];
        totalTime += [question answerTime];
    }
    NSTimeInterval averageTime = totalTime /[self.questionsArray count];
    return [NSString stringWithFormat:@"total time: %fs, average time: %fs", totalTime, averageTime];
}



@end
