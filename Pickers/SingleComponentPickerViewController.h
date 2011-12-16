//
//  SingleComponentPickerViewController.h
//  Pickers
//
//  Created by Saurabh Jain on 12/15/11.
//  Copyright 2011 USC Student. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface SingleComponentPickerViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource> {
    
    IBOutlet UIPickerView *singlePicker;
    NSArray *pickerData;
    
}

@property (nonatomic, retain) UIPickerView *singlePicker;
@property (nonatomic, retain) NSArray *pickerData;

-(IBAction)buttonPressed;

@end
