//
//  CoeMasterViewController.m
//  CoeApp
//
//  Created by TIMOTHY AHLINE on 2/12/13.
//  Copyright (c) 2013 TIMOTHY AHLINE. All rights reserved.
//

#import "CoeMasterViewController.h"
#import "CoeWebViewController.h"
#import "CoeMapViewController.h"
#define REFRESH_HEADER_HEIGHT 52.0f

@interface CoeMasterViewController () {
    NSMutableArray *_objects;
}
@end

@implementation CoeMasterViewController
@synthesize textLoading, refreshHeader, topLabel,  spinner, tweets, mainStr;

- (IBAction)cancel:(UIStoryboardSegue *)segue
{
    if ([[segue identifier] isEqualToString:@"CancelInput"]) {
        [self dismissViewControllerAnimated:YES completion:NULL];
    }
}

- (void)awakeFromNib
{
    [super awakeFromNib];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self addRefreshHeader];
    [self fetchTweets];
    [self.tableView reloadData];
    [self stopLoading];
    self.title = @"Pull Down Refresh";
}

- (void)viewWillAppear:(BOOL)animated { // a litle method added extra to re write the title to 'Tweets' from 'Back'. No easier way to do it AFIK!
    [super viewWillAppear:animated];
    [self setTitle:@"Tweets"]; // this resets the title on return from a View
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)insertNewObject:(id)sender
{
//    if (!_objects) {
//        _objects = [[NSMutableArray alloc] init];
//    }
//    [_objects insertObject:[NSDate date] atIndex:0];
//    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
//    [self.tableView insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
}

#pragma mark - Table View

//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
//{
//    return 1;
//}

//- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
//{
//    return _objects.count;
//}

//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
//
//    NSDate *object = _objects[indexPath.row];
//    cell.textLabel.text = [object description];
//    return cell;
//}

//- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    // Return NO if you do not want the specified item to be editable.
//    return YES;
//}
//
//- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    if (editingStyle == UITableViewCellEditingStyleDelete) {
//        [_objects removeObjectAtIndex:indexPath.row];
//        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
//    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
//        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
//    }
//}

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

- (id)initWithStyle:(UITableViewStyle)style {
    self = [super initWithStyle:style];
    if (self != nil) {
        [self loadingText];
    }
    return self;
}
- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self != nil) {
        [self loadingText];
    }
    return self;
}
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self != nil) {
        [self loadingText];
    }
    return self;
}
- (void)loadingText{
}
- (void)addRefreshHeader {
    CGRect viewRect1 = CGRectMake(0, 0 - REFRESH_HEADER_HEIGHT, 320, REFRESH_HEADER_HEIGHT);
    CGRect viewRect2 = CGRectMake(0, 0, 320, REFRESH_HEADER_HEIGHT);
    UIView* refreshHeader = [[UIView alloc] initWithFrame: viewRect1];
    refreshHeader.backgroundColor = [UIColor clearColor];
    UIView* topLabel = [[UILabel alloc] initWithFrame:viewRect2];
    topLabel.backgroundColor = [UIColor clearColor];
    UIFont* font = [UIFont boldSystemFontOfSize:12.0];
    UITextAlignment* textAlignment = UITextAlignmentCenter;
    UIActivityIndicatorView* spinner = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
    spinner.frame = CGRectMake(floorf(floorf(REFRESH_HEADER_HEIGHT - 20) / 2), floorf((REFRESH_HEADER_HEIGHT - 20) / 2), 20, 20);
    spinner.hidesWhenStopped = YES;
    [refreshHeader addSubview:topLabel];
    [refreshHeader addSubview:spinner];
    [self.tableView addSubview:refreshHeader];
}
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView {
    if (isLoading) return;
    _dragging = YES;
}
- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    if (isLoading) {
        if (scrollView.contentOffset.y > 0)
            self.tableView.contentInset = UIEdgeInsetsZero;
        else if (scrollView.contentOffset.y >= -REFRESH_HEADER_HEIGHT)
            self.tableView.contentInset = UIEdgeInsetsMake(-scrollView.contentOffset.y, 0, 0, 0);
    } else if (_dragging && scrollView.contentOffset.y < 0) {
    }  }
- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate { // complex method for the refreshing header
    if (isLoading) return;
    _dragging = NO;
    if (scrollView.contentOffset.y <= -REFRESH_HEADER_HEIGHT) {
        [self startLoading];
    }  }
- (void)startLoading {
    isLoading = YES;
    [UIView beginAnimations:nil context:NULL]; // complex method to draw refreshing header:) well, its NOT THAT HARD IS IT?
    [UIView setAnimationDuration:0.3];
    self.tableView.contentInset = UIEdgeInsetsMake(REFRESH_HEADER_HEIGHT, 0, 0, 0);
    topLabel.text = self.textLoading;
    [spinner startAnimating];
    [UIView commitAnimations];
    [self refresh];
}
- (void)stopLoading {
    self.title = @"Pull Down Refresh...."; // shows after a refresh (USUALLY, if you're lucky)!
    isLoading = NO;
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDuration:0.3];
    [UIView setAnimationDidStopSelector:@selector(stopLoadingComplete:finished:context:)];
    self.tableView.contentInset = UIEdgeInsetsZero;
    UIEdgeInsets tableContentInset = self.tableView.contentInset;
    tableContentInset.top = 0.0;
    self.tableView.contentInset = tableContentInset;
    [UIView commitAnimations];
}
- (void)stopLoadingComplete:(NSString *)animationID finished:(NSNumber *)finished context:(void *)context {
    [spinner stopAnimating];
}
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (void)addItem {
    //    [self fetchTweets]; (dont think I need this twice, so I commented it out)
    [self.tableView reloadData];
    [self stopLoading];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return tweets.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"Celly"; // set in storyboard attributes too
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    NSMutableDictionary *tweet = [tweets objectAtIndex:indexPath.row];
    NSString *text = [tweet objectForKey:@"text"];
    mainStr = text; // not using this at present but useful for JSON display instead of a single tweet
    NSString *name = [[tweet objectForKey:@"user"] objectForKey:@"name"]; //this does me head-in :)
    // NSLog(@" name is %@",name);
    cell.textLabel.text = text;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"by %@", name];
    NSString *imageUrl = [[tweet objectForKey:@"user"] objectForKey:@"profile_image_url"];
    NSData *data = [NSData dataWithContentsOfURL:[NSURL URLWithString:imageUrl]];
    cell.imageView.image = [UIImage imageWithData:data];
    return cell;
}

- (void)fetchTweets
{
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        NSData* data = [NSData dataWithContentsOfURL:
                        [NSURL URLWithString: @"https://api.twitter.com/1/statuses/user_timeline.json?include_entities=true&include_rts=true&screen_name=Mashable&count=5"]];
        // above searches for 'party'. You cannot get your Twitter stream without using OAuth which is a messy piece of horrible code, believe me, don't bother unless you are very clever
        
        NSError* error;
        self.title = @"Pull Down Refresh."; // you could try an error message, but it cannot tell you the exact error (as it is at the moment)
        @try {
            tweets = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&error];
            
        }
        @catch ( NSException *e ) {
            self.title = @"Pull Down Refresh.."; // its a no data error actually! e.description;
        }
        @finally {
        }
        dispatch_async(dispatch_get_main_queue(), ^{
            [self.tableView reloadData]; }); });
}

- (void)refresh {
    [self fetchTweets];
    [self.tableView reloadData];
    
    [self performSelector:@selector(addItem) withObject:nil afterDelay:0.2f];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showWeb"]) {
//        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
//        NSDate *object = _objects[indexPath.row];
//        [[segue destinationViewController] setDetailItem:object];
    }
    if ([segue.identifier isEqualToString:@"segey"]) { // 'segey' I set in storyboard push thing as an indentifier
        self.title = @"Back"; // this sets the navigation back button title in following View
        
        NSInteger row = [[self tableView].indexPathForSelectedRow row];
        NSDictionary *tweet = [tweets objectAtIndex:row];
        
        Detail *detailController = segue.destinationViewController;
        detailController.detailItem = [tweet objectForKey:@"text"] ;// tweets; // ot tweet - damn
    }
}

@end
