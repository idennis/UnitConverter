//
//  ViewController.m
//  UnitConverter
//
//  Created by fillr on 14/8/17.
//  Copyright © 2017 dennishou. All rights reserved.
//

#import "ViewController.h"

double convertCentimetreToKilometre(double centimetreValue){
    double kilometre;
    return kilometre = centimetreValue/100000;
}

double convertCentimetreToFoot(double centimetreValue){
    double foot;
    return foot = 0.0328084 * centimetreValue;
}

double convertCentimetreToYard(double centimetreValue){
    double yard;
    return yard = 0.011 * centimetreValue;
}

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *inputField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentController;
@property (weak, nonatomic) IBOutlet UILabel *outputField;

@end

@implementation ViewController

- (IBAction)updateButton:(id)sender {
    
    NSMutableString *buffer = [NSMutableString new];
    
    double userInput = [self.inputField.text doubleValue];
    

    if (self.segmentController.selectedSegmentIndex == 0){
        double kmValue = convertCentimetreToKilometre(userInput);
        [buffer appendString:[@(kmValue) stringValue]];
    }
    else if (self.segmentController.selectedSegmentIndex == 1){
        double footValue = convertCentimetreToFoot(userInput);
        [buffer appendString:[NSString stringWithFormat:@"%.02f", footValue]];
    }
    else{
        double yardValue = convertCentimetreToYard(userInput);
        [buffer appendString:[NSString stringWithFormat:@"%.02f", yardValue]];
    }
    self.outputField.text = buffer;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
