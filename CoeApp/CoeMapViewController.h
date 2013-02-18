//
//  CoeMapViewController.h
//  CoeApp
//
//  Created by JACOB DEATON on 2/17/13.
//  Copyright (c) 2013 TIMOTHY AHLINE. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface CoeMapViewController : UIViewController
@property (weak, nonatomic) IBOutlet MKMapView *mapView;


-(void) goLocation;
@end
