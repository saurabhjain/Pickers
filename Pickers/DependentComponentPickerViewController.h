//
//  DependentComponentPickerViewController.h
//  Pickers
//
//  Created by Saurabh Jain on 12/15/11.
//  Copyright 2011 USC Student. All rights reserved.
//

#import <UIKit/UIKit.h>

#define kStateComponent 0
#define kZipComponent 1


@interface DependentComponentPickerViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource> {
    
    IBOutlet UIPickerView *picker;
    NSDictionary *stateZips;
    NSArray *states;
    NSArray *zips;
    
}

@property(retain, nonatomic) UIPickerView *picker;
@property(retain, nonatomic) NSDictionary *stateZips;
@property(retain, nonatomic) NSArray *states;
@property(retain, nonatomic) NSArray *zips;

- (IBAction)buttonPressed;

@end
