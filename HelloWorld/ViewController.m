//
//  ViewController.m
//  HelloWorld
//
//  Created by Rui Yuan on 1/19/15.
//  Copyright (c) 2015 Rui Yuan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textField;

@property (weak, nonatomic) IBOutlet UILabel *label;



- (IBAction)changeGreeting:(id)sender;


@end



@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)changeGreeting:(id)sender {
    
    
    self.userName = self.textField.text;
    
    NSString *nameString = self.userName;
    if(nameString.length==0){
        nameString = @"World";
    
    }
    NSString *greeting = [[NSString alloc] initWithFormat:@"Hello,%@!",nameString ];
    
    self.label.text=greeting;
    
}

- (BOOL) textFieldShouldReturn: (UITextField *) theTextField{
    if(theTextField == self.textField){
        [theTextField resignFirstResponder];
    }
    return YES;
}


@end
