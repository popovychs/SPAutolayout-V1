//
//  ViewController.m
//  SPAutolayout-V1
//
//  Created by popovychs on 19.10.15.
//  Copyright © 2015 popovychs. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)showText:(UIButton *)sender {
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"Data" ofType:@"txt"];
    NSString *textFromFile = [NSString stringWithContentsOfFile:filePath
                                                       encoding:NSMacOSRomanStringEncoding
                                                          error:nil];
    _label.text = textFromFile;
}

- (IBAction)clearText:(UIButton *)sender {
    _label.text = @"";
}

@end
