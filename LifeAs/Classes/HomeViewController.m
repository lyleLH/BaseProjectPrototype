//
//  HomeViewController.m
//  LifeAs
//
//  Created by lyleKP on 16/7/25.
//  Copyright © 2016年 lyleKP. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = @"Home";
}


- (IBAction)nextPage:(id)sender {
    
    BaseViewController * vc = [[BaseViewController alloc] init];
    vc.title = @"Tomorrow";
    [self.navigationController pushViewController:vc animated:YES];
    
    
}




@end
