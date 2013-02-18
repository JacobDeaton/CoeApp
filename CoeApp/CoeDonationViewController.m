//
//  CoeDonationViewController.m
//  CoeApp
//
//  Created by JACOB DEATON on 2/17/13.
//  Copyright (c) 2013 TIMOTHY AHLINE. All rights reserved.
//

#import "CoeDonationViewController.h"
#import "CoeMasterViewController.h"

@interface CoeDonationViewController ()

@end

@implementation CoeDonationViewController




- (void)viewDidLoad
{
    [super viewDidLoad];
    NSURL *myURL = [NSURL URLWithString:@"http://www.coe.edu/development/coefund/onlinegiving"];
    NSURLRequest *myRequest = [NSURLRequest requestWithURL:myURL];
    
    [DonationWebView loadRequest:myRequest];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
