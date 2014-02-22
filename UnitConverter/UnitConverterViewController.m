//
//  UnitConverterViewController.m
//  UnitConverter
//
//  Created by David Archuleta on 2/21/14.
//  Copyright (c) 2014 David Archuleta. All rights reserved.
//

#import "UnitConverterViewController.h"

@interface UnitConverterViewController ()

@end

@implementation UnitConverterViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)convertTemp:(id)sender 
{
    double Fahrenheit = [_tempText.text doubleValue];
    double Celsius = (Fahrenheit - 32) / 1.8;
    
    NSString *resultString = [[NSString alloc]
                              initWithFormat: @"Celsius %f",
                              Celsius];
    _resultLabel.text = resultString;
}

- (IBAction)textFieldReturn:(id)sender 
{
    [sender resignFirstResponder];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event 
{
    UITouch *touch = [[event allTouches] anyObject];
    if ([_tempText isFirstResponder] && [touch view] != _tempText) {
        [_tempText resignFirstResponder];
    }
    [super touchesBegan: touches withEvent: event];
}
@end
