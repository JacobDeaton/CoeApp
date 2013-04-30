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
#import "TwitterViewController.h"


@interface CoeMasterViewController () {
    NSMutableArray *_objects;
}
@end

@implementation CoeMasterViewController

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
    self.view.backgroundColor = [UIColor colorWithPatternImage: [UIImage imageNamed:@"background-pattern-006.gif"]];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(200, 35, 100, 50);
    [button setTitle:@"Website" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonPressed) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeCustom];
    button1.frame = CGRectMake(200, 152, 100, 50);
    [button1 setTitle:@"Coe Map" forState:UIControlStateNormal];
    [button1 addTarget:self action:@selector(buttonPressed) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button1];
    
    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeCustom];
    button2.frame = CGRectMake(200, 269, 100, 50);
    [button2 setTitle:@"Twitter" forState:UIControlStateNormal];
    [button2 addTarget:self action:@selector(buttonPressed) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button2];
    
    UIButton *button3 = [UIButton buttonWithType:UIButtonTypeCustom];
    button3.frame = CGRectMake(200, 386, 100, 50);
    [button3 setTitle:@"Donations" forState:UIControlStateNormal];
    [button3 addTarget:self action:@selector(buttonPressed) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button3];
    
    [button3 addTarget:self action:@selector(donations:) forControlEvents:UIControlEventTouchUpInside];
    [button2 addTarget:self action:@selector(twitter:) forControlEvents:UIControlEventTouchUpInside];
    [button1 addTarget:self action:@selector(map:) forControlEvents:UIControlEventTouchUpInside];
    [button addTarget:self action:@selector(website:) forControlEvents:UIControlEventTouchUpInside];
    
    [super viewDidLoad];
    
}

-(void) donations:(id)sender
{
    [self performSegueWithIdentifier:@"donations" sender:self];
}

-(void) twitter:(id)sender
{
    [self performSegueWithIdentifier:@"twitter" sender:self];
}

-(void) website:(id)sender
{
    [self performSegueWithIdentifier:@"website" sender:self];
}

-(void) map:(id)sender
{
    [self performSegueWithIdentifier:@"map" sender:self];
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

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 4;
}

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

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showWeb"]) {
//        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
//        NSDate *object = _objects[indexPath.row];
//        [[segue destinationViewController] setDetailItem:object];
    }
    
}

@end
