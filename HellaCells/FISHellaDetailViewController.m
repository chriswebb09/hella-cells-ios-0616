//
//  FISHellaDetailViewController.m
//  HellaCells
//
//  Created by Christopher Webb-Orenstein on 6/21/16.
//  Copyright © 2016 FIS. All rights reserved.
//

#import "FISHellaDetailViewController.h"

@interface FISHellaDetailViewController()
@property (weak, nonatomic) IBOutlet UILabel *numberLabel;
@end

@implementation FISHellaDetailViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.numberLabel.text = self.displayNumber;
}


//-(void)viewDidLoad {
//    self.numberLabel.text = [NSString stringWithFormat:@"%@", self.number];
//}

@end
