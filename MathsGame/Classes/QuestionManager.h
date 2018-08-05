//
//  QuestionManager.h
//  MathsGame
//
//  Created by Nathan Wainwright on 2018-08-04.
//  Copyright © 2018 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"


@interface QuestionManager : NSObject

@property (nonatomic, assign) NSMutableArray* questionsArray;


-(NSString *)timeOutput;


@end
