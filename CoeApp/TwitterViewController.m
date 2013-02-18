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


- (IBAction)getPublicTimeline:(id)sender {
    // Create a request, which in this example, grabs the public timeline.
    // This example uses version 1 of the Twitter API.
    // This may need to be changed to whichever version is currently appropriate.
    TWRequest *postRequest = [[TWRequest alloc] initWithURL:[NSURL URLWithString:@"http://api.twitter.com/1/statuses/public_timeline.json"] parameters:nil requestMethod:TWRequestMethodGET];
    
    // Perform the request created above and create a handler block to handle the response.
    [postRequest performRequestWithHandler:^(NSData *responseData, NSHTTPURLResponse *urlResponse, NSError *error) {
        NSString *output;
        
        if ([urlResponse statusCode] == 200) {
            // Parse the responseData, which we asked to be in JSON format for this request, into an NSDictionary using NSJSONSerialization.
            NSError *jsonParsingError = nil;
            NSDictionary *publicTimeline = [NSJSONSerialization JSONObjectWithData:responseData options:0 error:&jsonParsingError];
            output = [NSString stringWithFormat:@"HTTP response status: %i\nPublic timeline:\n%@", [urlResponse statusCode], publicTimeline];
        }
        else {
            output = [NSString stringWithFormat:@"HTTP response status: %i\n", [urlResponse statusCode]];
        }
        
        [self performSelectorOnMainThread:@selector(displayText:) withObject:output waitUntilDone:NO];
    }];
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
