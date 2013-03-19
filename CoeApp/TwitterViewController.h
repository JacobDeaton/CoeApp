//
//  TwitterViewController.h
//  CoeApp
//
//  Created by TIMOTHY AHLINE on 2/17/13.
//  Copyright (c) 2013 TIMOTHY AHLINE. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Accounts/Accounts.h>
#import <Social/Social.h>
#import <Twitter/twitter.h>


@interface TwitterViewController : UITableViewController <UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) IBOutlet UITableView *tweetTableView;

@property (strong, nonatomic) NSArray * dataSource;


@end
