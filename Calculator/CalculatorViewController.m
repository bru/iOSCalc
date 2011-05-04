//
//  CalculatorViewController.m
//  Calculator
//
//  Created by Riccardo Cambiassi on 04/05/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "CalculatorViewController.h"

@implementation CalculatorViewController

@synthesize display, plusButton, minusButton, multiplyButton, divideButton;

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
  [display setText:@"0"];
  buffer = 0;
  rightOp = 0;
  display.borderStyle = UITextBorderStyleRoundedRect;
  
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
  NSString *digit = [sender currentTitle];
  NSString *current = [display text];
  if ([current isEqualToString:@"0"] && ![digit isEqualToString:@"."]) {
    current = digit;
  } else {
    current = [current stringByAppendingString:digit];
  }
  rightOp = [current floatValue];
  [display setText: (NSString *)current];
}

- (IBAction)setOperator:(id)sender {
  buffer = [[display text] floatValue];
  [display setText:@"0"];
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
  buffer = rightOp = 0;
  oper = nil;
  
  [plusButton setSelected: NO];
  [minusButton setSelected: NO];
  [multiplyButton setSelected: NO];
  [divideButton setSelected: NO];
  [display setText:@"0"];
}

- (IBAction)resolveOperation:(id)sender {
  float value = buffer;
  if ([oper isEqualToString: @"+"]) {
    value = buffer + rightOp;
  }
  if ([oper isEqualToString: @"-"]) {
    value = buffer - rightOp;
  }
  if ([oper isEqualToString: @"*"]) {
    value = buffer * rightOp;
  }
  if ([oper isEqualToString: @"÷"]) {
    value = buffer / rightOp;
  }
  if ([oper isEqualToString: @"±"]) { 
    value = (-1 * buffer);
  }
  
  
  buffer = value;
  [display setText:[[NSNumber numberWithFloat:value] stringValue]]; 
}

@end
