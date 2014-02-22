//
//  UnitConverterViewController.h
//  UnitConverter
//
//  Created by David Archuleta on 2/21/14.
//  Copyright (c) 2014 David Archuleta. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UnitConverterViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *tempText;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;
- (IBAction)convertTemp:(id)sender;
- (IBAction)textFieldReturn:(id)sender;
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event;

@end
