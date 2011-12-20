//
//  CustomComponentPickerViewController.m
//  Pickers
//
//  Created by Saurabh Jain on 12/15/11.
//  Copyright 2011 USC Student. All rights reserved.
//

#import "CustomComponentPickerViewController.h"


@implementation CustomComponentPickerViewController
@synthesize picker;
@synthesize winLabel;
@synthesize column1;
@synthesize column2;
@synthesize column3;
@synthesize column4;
@synthesize column5;

- (IBAction)spin {
    
    BOOL win = NO;
    int numInRow = 1;
    int lastVal = -1;
    for(int i=0; i<5; i++) {
        
        int newValue = random() % [self.column1 count];
        
        if (newValue == lastVal) 
            numInRow++;
        else
            numInRow = 1;
        lastVal = newValue;
        [picker selectRow:(newValue) inComponent:i animated:YES];
        [picker reloadComponent:i];
        if (numInRow >= 3)
            win = YES;
    }
    
    if (win)
        winLabel.text = @"Win!";
    else
        winLabel.text = @"";
}

# pragma mark -
# pragma mark Picker Data Source Methods
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    
    return 5;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    
    return [self.column1 count];
}

# pragma mark Picker Delegate Methods;
- (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view {
    
    NSString *arrayName = [[NSString alloc] initWithFormat:@"column%d", component+1];
    NSArray *array = [self valueForKey:arrayName];
    return [array objectAtIndex:row];
    
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
    [picker release];
    [winLabel release];
    [column1 release];
    [column2 release];
    [column3 release];
    [column4 release];
    [column5 release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    UIImage *compass = [UIImage imageNamed:@"compass.png"];
    UIImage *inbox = [UIImage imageNamed:@"inbox.png"];
    UIImage *magnify = [UIImage imageNamed:@"magnify.png"];
    UIImage *network = [UIImage imageNamed:@"network.png"];
    UIImage *phone = [UIImage imageNamed:@"phone.png"];
    UIImage *tv = [UIImage imageNamed:@"tv.png"];
    
    for (int i=1; i <=5; i++) {
        
        UIImageView *compassView = [[UIImageView alloc] initWithImage:compass];
        UIImageView *inboxView = [[UIImageView alloc] initWithImage:inbox];
        UIImageView *magnifyView = [[UIImageView alloc] initWithImage:magnify];
        UIImageView *networkView = [[UIImageView alloc] initWithImage:network];
        UIImageView *phoneView = [[UIImageView alloc] initWithImage:phone];
        UIImageView *tvView = [[UIImageView alloc] initWithImage:tv];
        
        NSArray *imageViewArray = [[NSArray alloc]initWithObjects:compassView, inboxView, magnifyView, networkView, phoneView, tvView, nil];
        
        NSString *fieldName = [[NSString alloc] initWithFormat:@"column%d", i];
        [self setValue:imageViewArray forKey:fieldName];
        [fieldName release];
        [imageViewArray release];
        
        [compassView release];
        [inboxView release];
        [magnifyView release];
        [networkView release];
        [phoneView release];
        [tvView release];
    }
    
    srandom(time(NULL));
    
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
