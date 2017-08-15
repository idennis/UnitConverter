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
    return kilometre = 100000 * centimetreValue;
}

double convertCentimetreToFoot(double centimetreValue){
    double foot;
    return foot = 0.0328084 * centimetreValue;
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
        [buffer appendString:@"foot"];
        double footValue = convertCentimetreToFoot(userInput);
        [buffer appendString:[@(footValue) stringValue]];
    }
    else{
        [buffer appendString:@"unit four"];
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
