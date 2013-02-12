//
//  CoeDetailViewController.h
//  CoeApp
//
//  Created by TIMOTHY AHLINE on 2/12/13.
//  Copyright (c) 2013 TIMOTHY AHLINE. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CoeDetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
