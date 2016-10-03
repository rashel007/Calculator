//
//  ViewController.h
//  MyCalculator
//
//  Created by Estique on 10/2/16.
//  Copyright © 2016 Estique. All rights reserved.
//

#import <UIKit/UIKit.h>
#define PLUS 0
#define MINUS 1
#define MULTIPY 2
#define DEVIDE 3

@interface ViewController : UIViewController
{
    NSInteger num1;
    NSInteger num2;
    double answer;
    
    NSInteger operand;
    NSString *theNumber;
    
    IBOutlet UILabel *lblText;
}


@property NSInteger num1;
@property NSInteger num2;
@property double answer;

@property NSInteger operand;
@property NSString *theNumber;

@property IBOutlet UILabel *lblText;

@end

