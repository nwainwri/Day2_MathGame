//
//  QuestionFactory.m
//  MathsGame
//
//  Created by Nathan Wainwright on 2018-08-04.
//  Copyright © 2018 Jamie. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory

-(id)generateRandomQuestion{
    NSArray *questionSubClassNames =@[@"AdditionQuestion", @"SubtractionQuestion", @"DivisionQuestion", @"MultiplicationQuestion"];
    NSInteger rand = arc4random_uniform(4);
    NSArray *class = questionSubClassNames[rand];
    
    return [[NSClassFromString(class) alloc] init];
    
}

@end
