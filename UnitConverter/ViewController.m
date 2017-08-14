//
//  ViewController.m
//  UnitConverter
//
//  Created by fillr on 14/8/17.
//  Copyright © 2017 dennishou. All rights reserved.
//

#import "ViewController.h"

double convertUnitOneToUnitTwo(double unitOneValue){
    double unitTwoValue;
    return unitTwoValue = 10 * unitOneValue + 2;
    
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
    
    [buffer appendString:@"clicked"];

    if (self.segmentController.selectedSegmentIndex == 0){
        double unitTwoValue = convertUnitOneToUnitTwo(userInput);
        [buffer appendString:[@(unitTwoValue) stringValue]];
    }
    else if (self.segmentController.selectedSegmentIndex == 1){
        [buffer appendString:@"unit three"];
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
