//
//  ViewController.m
//  Labb1ObjectiveC
//
//  Created by Jonathan Thunberg on 2020-01-10.
//  Copyright © 2020 Jonathan Thunberg. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    

}

-(void)viewDidAppear:(BOOL)animated {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSInteger themeInt = [defaults integerForKey:@"Theme"];
    
    if (themeInt == 1) {
        self.view.backgroundColor = [UIColor whiteColor];
    } else if (themeInt == 0) {
         self.view.backgroundColor = [UIColor colorWithRed:0.07 green:0.07 blue:0.07 alpha:1.0];
    }
}


@end
