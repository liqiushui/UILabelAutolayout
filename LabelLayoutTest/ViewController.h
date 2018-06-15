//
//  ViewController.h
//  LabelLayoutTest
//
//  Created by lunli on 2018/6/15.
//  Copyright © 2018年 lunli. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    
    __weak IBOutlet UILabel *test;
}
@property (weak, nonatomic) IBOutlet UILabel *labelA;
@property (weak, nonatomic) IBOutlet UILabel *labelB;

@property (weak, nonatomic) IBOutlet UILabel *labelC;

@end

