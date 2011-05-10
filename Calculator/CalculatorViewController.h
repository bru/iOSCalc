//
//  CalculatorViewController.h
//  Calculator
//
//  Created by Riccardo Cambiassi on 04/05/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CalculatorViewController : UIViewController {
  
  UILabel *display;
  UIButton *plusButton;
  UIButton *minusButton;
  UIButton *multiplyButton;
  UIButton *divideButton;
  UIButton *powerButton;
  NSString *oper;
  float leftOp, rightOp;
  bool clean;
    
}

@property (retain) IBOutlet UILabel *display;
@property (retain) IBOutlet UIButton *plusButton;
@property (retain) IBOutlet UIButton *minusButton;
@property (retain) IBOutlet UIButton *multiplyButton;
@property (retain) IBOutlet UIButton *divideButton;
@property (retain) IBOutlet UIButton *powerButton;

- (IBAction)addDigit:(id) sender;
- (IBAction)setOperator: (id) sender;
- (IBAction)unaryOperator: (id) sender;
- (IBAction)resolveOperation: (id) sender;
- (IBAction)clear: (id) sender;
- (void)reset;


@end
