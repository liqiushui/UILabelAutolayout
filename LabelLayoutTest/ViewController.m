//
//  ViewController.m
//  LabelLayoutTest
//
//  Created by lunli on 2018/6/15.
//  Copyright © 2018年 lunli. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    test.text = @"Hello world";
    test.backgroundColor = [UIColor greenColor];
    test.numberOfLines = 0;
    
    self.labelA.text = @"Hello";
    self.labelA.backgroundColor = [UIColor orangeColor];
    self.labelA.numberOfLines = 1;
    
    self.labelB.text = @"World";
    self.labelB.backgroundColor = [UIColor orangeColor];
    self.labelB.numberOfLines = 1;
    
    
    self.labelC.text = @"Hello World";
    self.labelC.backgroundColor = [UIColor orangeColor];
    self.labelC.numberOfLines = 1;
    
    [self testAppendStr];
    [self testAppendStrToLabelA];
    [self testAppendStrToLabelC];

}


- (void)testAppendStr
{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        self->test.text = [self->test.text stringByAppendingString:@"Hello"];
        [self testAppendStr];
    });
}

- (void)testAppendStrToLabelA
{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        self.labelA.text = [self.labelA.text stringByAppendingString:@"Hello"];
        [self testAppendStrToLabelA];
    });
}

- (void)testAppendStrToLabelC
{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        self.labelC.text = [self.labelC.text stringByAppendingString:@"Hello"];
        [self testAppendStrToLabelC];
    });
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
