//
//  ViewController.m
//  MyCalculator
//
//  Created by Estique on 10/2/16.
//  Copyright © 2016 Estique. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize num1, num2, answer, operand, lblText, theNumber;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self defaultValues];
    
    [self printNumber];
    
}

-(void) defaultValues{
    [self setNum1:0];
    [self setNum2:0];
    [self setAnswer:0.0];
    [self setOperand:PLUS];
    [self setTheNumber:@"0"];
}

// button click functions

-(void) printNumber{
     [lblText setText:theNumber];
}

-(IBAction)printResult:(id)sender{
    [self setNum2:[theNumber intValue]];
    
    if(operand == PLUS){
        answer = num1 + num2;
    }else if (operand == MINUS){
        answer = num1 - num2;
    }else if (operand == MULTIPY){
        answer = num1 * num2;
    }else{
        //devide
        if(num2 == 0){
            UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"ERROR..." message:@"Number 2 is nil !" preferredStyle:UIAlertControllerStyleAlert];
            
            UIAlertAction *ok = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil];
            [alert addAction:ok];
            [self presentViewController:alert animated:YES completion:nil];
        }else{
            answer = (double)num1 / (double)num2;
        }
    }
    
    [self setTheNumber:[NSString stringWithFormat:@"%0.2f", answer]];
    
    [self printNumber];
}

-(IBAction)print9:(id)sender{
    theNumber = [theNumber stringByAppendingString:@"9"];
    [self printNumber];
}
-(IBAction)print8:(id)sender{
    theNumber = [theNumber stringByAppendingString:@"8"];
    [self printNumber];
}
-(IBAction)print7:(id)sender{
    theNumber = [theNumber stringByAppendingString:@"7"];
    [self printNumber];
}
-(IBAction)print6:(id)sender{
    theNumber = [theNumber stringByAppendingString:@"6"];
    [self printNumber];
}
-(IBAction)print5:(id)sender{
    theNumber = [theNumber stringByAppendingString:@"5"];
    [self printNumber];
}
-(IBAction)print4:(id)sender{
    theNumber = [theNumber stringByAppendingString:@"4"];
    [self printNumber];
}
-(IBAction)print3:(id)sender{
    theNumber = [theNumber stringByAppendingString:@"3"];
    [self printNumber];
}
-(IBAction)print2:(id)sender{
    theNumber = [theNumber stringByAppendingString:@"2"];
    [self printNumber];
}
-(IBAction)print1:(id)sender{
    theNumber = [theNumber stringByAppendingString:@"1"];
    [self printNumber];
}
-(IBAction)print0:(id)sender{
    theNumber = [theNumber stringByAppendingString:@"0"];
    [self printNumber];
}

-(IBAction)pressC:(id)sender{
    [self defaultValues];
    [self printNumber];
}


-(IBAction)pressPlus:(id)sender{
    [self setOperand:PLUS];
    [self setNum1:[theNumber intValue]];
    [self setTheNumber:@"0"];
    [self printNumber];
}

-(IBAction)pressMinus:(id)sender{
    [self setOperand:MINUS];
    [self setNum1:[theNumber intValue]];
    [self setTheNumber:@"0"];
    [self printNumber];
}

-(IBAction)pressMulti:(id)sender{
    [self setOperand:MULTIPY];
    [self setNum1:[theNumber intValue]];
    [self setTheNumber:@"0"];
    [self printNumber];
}

-(IBAction)pressDevide:(id)sender{
    [self setOperand:DEVIDE];
    [self setNum1:[theNumber intValue]];
    [self setTheNumber:@"0"];
    [self printNumber];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
