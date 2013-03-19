//
//  NewTwitterViewController.h
//  CoeApp
//
//  Created by TIMOTHY AHLINE on 3/17/13.
//  Copyright (c) 2013 TIMOTHY AHLINE. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Accounts/Accounts.h"
#import "Twitter/Twitter.h"

@interface NewTwitterViewController : UITableViewController

-(BOOL) requestTweeets:(ACAccount *) account;
-(void) printTweet:(NSArray *) timeline;
-(BOOL) refreshtweets;

@end
