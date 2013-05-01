//
//  CoeWebViewController.m
//  CoeApp
//
//  Created by TIMOTHY AHLINE on 2/12/13.
//  Copyright (c) 2013 TIMOTHY AHLINE. All rights reserved.
//
#import "CoeMasterViewController.h"
#import "CoeWebViewController.h"

@interface CoeWebViewController ()

@end

@implementation CoeWebViewController


- (void)viewDidLoad
{
    [[self navigationController] setNavigationBarHidden:NO animated:NO];
    [super viewDidLoad];
    NSURL *myURL = [NSURL URLWithString:@"http://coe.edu"];
    NSURLRequest *myRequest = [NSURLRequest requestWithURL:myURL];
    
    [myWebView loadRequest:myRequest];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    [[self navigationController] setNavigationBarHidden:YES animated:NO];
}

@end
