//
//  DoubleComponentPickerViewController.h
//  Pickers
//
//  Created by Saurabh Jain on 12/15/11.
//  Copyright 2011 USC Student. All rights reserved.
//

#import <UIKit/UIKit.h>

#define kFillingComponent 0
#define kBreadComponent 1


@interface DoubleComponentPickerViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource> {
    
    IBOutlet UIPickerView *doublePicker;
    NSArray *fillingTypes;
    NSArray *breadTypes;
    
}

@property(nonatomic, retain) UIPickerView *doublePicker;
@property(nonatomic, retain) NSArray *fillingTypes;
@property(nonatomic, retain) NSArray *breadTypes;

-(IBAction)buttonPressed;

@end
