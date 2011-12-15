//
//  PickersAppDelegate.h
//  Pickers
//
//  Created by Saurabh Jain on 12/15/11.
//  Copyright 2011 USC Student. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PickersViewController;

@interface PickersAppDelegate : NSObject <UIApplicationDelegate> {
    
    IBOutlet UIWindow *window;
    IBOutlet UITabBarController *rootController;

}

@property (nonatomic, retain) UIWindow *window;
@property (nonatomic, retain) UITabBarController *rootController;

@end
