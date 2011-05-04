//
//  CalculatorViewController.h
//  Calculator
//
//  Created by Riccardo Cambiassi on 04/05/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CalculatorViewController : UIViewController {
  
  UITextField *display;
  UIButton *plusButton;
  UIButton *minusButton;
  UIButton *multiplyButton;
  UIButton *divideButton;
  NSString *oper;
  float buffer, rightOp;
    
}

@property (retain) IBOutlet UITextField *display;
@property (retain) IBOutlet UIButton *plusButton;
@property (retain) IBOutlet UIButton *minusButton;
@property (retain) IBOutlet UIButton *multiplyButton;
@property (retain) IBOutlet UIButton *divideButton;

- (IBAction)addDigit:(id) sender;
- (IBAction)setOperator: (id) sender;
- (IBAction)unaryOperator: (id) sender;
- (IBAction)resolveOperation: (id) sender;
- (IBAction)clear: (id) sender;


@end
