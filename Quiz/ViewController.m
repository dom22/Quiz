//
//  ViewController.m
//  Quiz
//
//  Created by V on 12/27/14.
//  Copyright (c) 2014 V. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@property (nonatomic, weak) IBOutlet UILabel *questionLabel;
@property (nonatomic, weak) IBOutlet UILabel *answerLabel;

@property(nonatomic) int currentQuestionIndex;

@property(nonatomic,copy) NSArray *questions;
@property(nonatomic,copy) NSArray *answers;



@end

@implementation ViewController

- (instancetype) initWithNibName:(NSString *)nibNameOrNil
                          bundle:(NSBundle *)nibBundleOrNil
{
    //Call the init method implemented by the superclass
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];

if (self) {
    //create two arrays filled with questions and answers and maker pointers point to them

    self.questions = @[@"what is my favorite drink?",
                       @"how old am I?",
                       @"what's my first car's make?"];
    self.answers = @[@"tequila",
                     @"21",
                     @"1996 nissan pathfinder"];


}
                     //return the address of hte new object
                     return self;
                     }
                     

- (IBAction) showQuestion: (id) sender
{
    //Step to the next question
    self.currentQuestionIndex++;
    
    //Am I past the last question?
    if(self.currentQuestionIndex == [self.questions count]) {
        
        //Go back to the first question
        self.currentQuestionIndex = 0;
        
    }
    
    //Get the string at that inde in the questions array
    NSString *question = self.questions[self.currentQuestionIndex];
    
    //Display the string in the question label
    self.questionLabel.text = question;
    
    //reset the answer label
    self.answerLabel.text =@"???";
    
}

- (IBAction) showAnswer: (id) sender
{
    //What is the answer to the current question?
    NSString *answer = self.answers[self.currentQuestionIndex];
    
    //Display it in the answer label
    self.answerLabel.text = answer;
    
    
    
}



@end
