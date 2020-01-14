//
//  SettingsViewController.m
//  Labb1ObjectiveC
//
//  Created by Jonathan Thunberg on 2020-01-13.
//  Copyright © 2020 Jonathan Thunberg. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()

@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentControl;

@end

@implementation SettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSInteger themeInt = [defaults integerForKey:@"Theme"];
    
    if (themeInt == 1) {
        self.view.backgroundColor = [UIColor whiteColor];
        [_segmentControl setSelectedSegmentIndex:0];
    } else if (themeInt == 0) {
        [_segmentControl setSelectedSegmentIndex:1];
         self.view.backgroundColor = [UIColor colorWithRed:0.07 green:0.07 blue:0.07 alpha:1.0];
    }
}
- (IBAction)Segment:(id)sender {
    if (_segmentControl.selectedSegmentIndex == 0) {
        self.view.backgroundColor = [UIColor whiteColor];
        
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:1 forKey:@"Theme"];
        [defaults synchronize];
    } else {
        self.view.backgroundColor = [UIColor colorWithRed:0.07 green:0.07 blue:0.07 alpha:1.0];
        
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:0 forKey:@"Theme"];
        [defaults synchronize];
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
