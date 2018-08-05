//
//  main.m
//  MathsGame
//
//  Created by Jamie on 2018-07-31.
//  Copyright © 2018 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL gameOn = YES;
        ScoreKeeper *testScore = [[ScoreKeeper alloc] init];
        QuestionManager *testManager = [[QuestionManager alloc] init];
        InputHandler *inputHandler = [[InputHandler alloc] init];
        QuestionFactory *testFactory = [[QuestionFactory alloc] init];
        
        while (gameOn == YES)
        {
            Question *question = [testFactory generateRandomQuestion];
            [testManager.questionsArray addObject:question];
            
            NSLog (@"%@", [question question]);
            NSString *userAnswerString = [inputHandler userInputForPrompt:@"Please enter the answer (or type QUIT to exit):"];
            NSInteger userAnswer = [userAnswerString intValue];
            
            if ([userAnswerString isEqualToString:@"QUIT"]) {
                gameOn = NO;
                continue; //jumps the loop back to the "start"
            }
            if (userAnswer == [question answer]) {
                [testManager timeOutput];
                NSLog(@"Right!");
                [testScore scoreKeeper:1 :0];
            }
            if (userAnswer != [question answer]) {
                NSLog(@"Wrong!");
                [testManager timeOutput];
                [testScore scoreKeeper:0 :1];
            }
            
            NSLog(@"TOTAL QUESTIONS DONE: %lu", [testManager.questionsArray count]);
            
            NSLog(@"%@", [testManager timeOutput]);
            
            
            
            //creating a pointer to object           class               property
            //NSCharacterSet *whiteSpaceAndNewLine = NSCharacterSet.whitespaceAndNewlineCharacterSet;
            //          new string returned         receiver            method                         parameter
            //       NSString *finalInputString = [inputwithEnter stringByTrimmingCharactersInSet:whiteSpaceAndNewLine];
        }
    }
    return 0;
}
