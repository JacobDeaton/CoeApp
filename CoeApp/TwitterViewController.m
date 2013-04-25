//
//  TwitterViewController.m
//  CoeApp
//
//  Created by TIMOTHY AHLINE on 2/17/13.
//  Copyright (c) 2013 TIMOTHY AHLINE. All rights reserved.
//

#import "TwitterViewController.h"

@interface TwitterViewController ()

@end

@implementation TwitterViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self getTimeLine];
    
}

- (void)getTimeLine {
    ACAccountStore *account = [[ACAccountStore alloc] init];
    ACAccountType *accountType = [account
                                  accountTypeWithAccountTypeIdentifier:ACAccountTypeIdentifierTwitter];
    
    [account requestAccessToAccountsWithType:accountType
                                     options:nil completion:^(BOOL granted, NSError *error)
     {
         NSLog(@"1");
         if (granted == YES)
         {
             NSArray *arrayOfAccounts = [account
                                         accountsWithAccountType:accountType];
             NSLog(@"2");
             if ([arrayOfAccounts count] > 0)
             {
                 ACAccount *twitterAccount = [arrayOfAccounts lastObject];
                
               NSURL *requestURL = [NSURL URLWithString:@"https://api.twitter.com/1.1/lists/statuses.json"];

                 NSMutableDictionary *parameters =
                 [[NSMutableDictionary alloc] init];
                 [parameters setObject:@"coe-app" forKey:@"slug"];
                 [parameters setObject:@"kohawk57" forKey:@"owner_screen_name"];
                 
                 SLRequest *postRequest = [SLRequest
                                           requestForServiceType:SLServiceTypeTwitter
                                           requestMethod:SLRequestMethodGET
                                           URL:requestURL parameters:parameters];
                 
                 postRequest.account = twitterAccount;
                 
                 [postRequest performRequestWithHandler:
                  ^(NSData *responseData, NSHTTPURLResponse
                    *urlResponse, NSError *error)
                  {
                      NSLog(@"responsedata: %@", [[NSString alloc] initWithData:responseData encoding:NSUTF8StringEncoding ]);
                      self.dataSource = [NSJSONSerialization
                                         JSONObjectWithData:responseData
                                         options: NSJSONReadingMutableLeaves
                                         error:&error];
                      
                      if (self.dataSource.count != 0) {
                          dispatch_async(dispatch_get_main_queue(), ^{
                              [self.tweetTableView reloadData];
                          });
                      }
                  }];
             }
         }
         else {
             NSLog(@"3");
             UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"" message:@"Please sign into twitter to see tweets" delegate:Nil cancelButtonTitle:@"Okay" otherButtonTitles:Nil, Nil];
             
             [alert performSelectorOnMainThread:@selector(show) withObject:nil waitUntilDone:YES];
        }
     }];
}

#pragma mark -
#pragma mark UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _dataSource.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"tweetCell";
    
    UITableViewCell *cell = [self.tweetTableView
                             dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc]
                initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];

    }
    
    NSDictionary *tweet = _dataSource[[indexPath row]];
    

    cell.textLabel.text = tweet[@"text"];
    
    
    [cell.textLabel setNumberOfLines:0];
    [cell.detailTextLabel setNumberOfLines:10];
    [cell.textLabel setTextColor:[UIColor blackColor]];
    [cell.textLabel setShadowColor:[UIColor whiteColor]];
    [cell.textLabel setShadowOffset:CGSizeMake(0.5, 0.5)];
    [[cell textLabel] setFont:[UIFont systemFontOfSize: 14.0]];
    [cell.detailTextLabel setTextColor:[UIColor blackColor]];
    [cell.textLabel setUserInteractionEnabled:YES];
    [cell.contentView setMultipleTouchEnabled:YES];
    

    return cell;
}


@end
