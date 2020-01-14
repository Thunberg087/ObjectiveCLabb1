//
//  GuessViewController.m
//  Labb1ObjectiveC
//
//  Created by Jonathan Thunberg on 2020-01-14.
//  Copyright © 2020 Jonathan Thunberg. All rights reserved.
//

#import "GuessViewController.h"

@interface GuessViewController ()

@property (weak, nonatomic) IBOutlet UILabel *sliderValue;

@property (weak, nonatomic) IBOutlet UISlider *slider;

@property (weak, nonatomic) IBOutlet UIButton *button;

@end

@implementation GuessViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}



- (IBAction)changeSlider:(id)sender {
    _sliderValue.text = [NSString stringWithFormat:@"%d", (int)_slider.value];
}


- (IBAction)buttonClick:(id)sender {
    
    int guessNumber = (int)_slider.value;
    int r = arc4random_uniform(100)+1;
    
    NSLog(@"%d", r);
    NSLog(@"%d", guessNumber);

    
    if (guessNumber == r) {
        NSLog(@"Rätt");
        [self createAlert:@"Du gissade rätt!" :@"Rätt"];
    } else if (guessNumber < r) {
        NSLog(@"Du gissade för lågt");
        [self createAlert:@"Du gissade för lågt!" :@"Ajdå!"];
    } else if (guessNumber > r) {
        NSLog(@"Du gissade för högt");
        [self createAlert:@"Du gissade för högt!" :@"Ajdå!"];
    }
}


//Create an alert for result
-(void)createAlert:(NSString *)message :(NSString *) title{
    //Creating the alert.
    UIAlertController *alertvc=[UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];

    //Creating a button to dismiss the alert.
    UIAlertAction * action = [UIAlertAction actionWithTitle: @ "Fortsätt" style: UIAlertActionStyleDefault handler: ^ (UIAlertAction * _Nonnull action) {
        //Reset values to default
        self->_sliderValue.text = @"50";
        self->_slider.value = 50;
        }];

      //Adding the button to the alert
      [alertvc addAction: action];

    //Presentating the alert.
      [self presentViewController: alertvc animated: true completion: nil];
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
