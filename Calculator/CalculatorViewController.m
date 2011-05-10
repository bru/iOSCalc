//
//  CalculatorViewController.m
//  Calculator
//
//  Created by Riccardo Cambiassi on 04/05/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "CalculatorViewController.h"

@implementation CalculatorViewController

@synthesize display, plusButton, minusButton, multiplyButton, divideButton, powerButton;

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
  [super viewDidLoad];
  [self reset];
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)addDigit:(id)sender {
  NSString *current = [display text];
  NSString *digit = [sender currentTitle];
  if ([digit isEqualToString:@"."] && clean) {
    digit = [NSString stringWithString: @"0."];
  }
  if ([current isEqualToString:@"0"] || clean) {
    current = digit;
  } else {
    current = [current stringByAppendingString:digit];
  }
  clean = false;
  rightOp = [current floatValue];
  [display setText: (NSString *)current];
}

- (IBAction)setOperator:(id)sender {
  [self resolveOperation:sender];
  leftOp = [[display text] floatValue];
  oper = [sender currentTitle];
  
  [plusButton setSelected: NO];
  [minusButton setSelected: NO];
  [multiplyButton setSelected: NO];
  [divideButton setSelected: NO];
  [sender setSelected:NO];
}

- (IBAction)unaryOperator:(id)sender {
  [self setOperator:sender];
  [self resolveOperation:sender];
}

- (IBAction)clear:(id)sender {
  [self reset];
}

- (void)reset {
  leftOp = rightOp = 0;
  oper = nil;
  clean = true;
  
  [plusButton setSelected: NO];
  [minusButton setSelected: NO];
  [multiplyButton setSelected: NO];
  [divideButton setSelected: NO];
  [display setText:@"0"];
  
}

- (IBAction)resolveOperation:(id)sender {
  float value = rightOp;
  if ([oper isEqualToString: @"+"]) {
    value = leftOp + rightOp;
  }
  if ([oper isEqualToString: @"-"]) {
    value = leftOp - rightOp;
  }
  if ([oper isEqualToString: @"*"]) {
    value = leftOp * rightOp;
  }
  if ([oper isEqualToString: @"Ö"]) {
    value = leftOp / rightOp;
  }
  if ([oper isEqualToString: @"^"]) {
    value = pow(leftOp, rightOp);
  }
  if ([oper isEqualToString: @"±"]) { 
    value = (-1 * leftOp);
  }
  
  leftOp = value;
  clean = true;
  [display setText:[[NSNumber numberWithFloat:leftOp] stringValue]]; 
}

@end
