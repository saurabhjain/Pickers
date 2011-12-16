//
//  DatePickerViewController.h
//  Pickers
//
//  Created by Saurabh Jain on 12/15/11.
//  Copyright 2011 USC Student. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface DatePickerViewController : UIViewController {
 
    IBOutlet UIDatePicker *datePicker;

}

@property (nonatomic, retain) UIDatePicker *datePicker;

- (IBAction) buttonPressed;

@end
