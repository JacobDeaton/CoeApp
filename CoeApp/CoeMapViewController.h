//
//  CoeMapViewController.h
//  A
//
//  Created by JACOB DEATON on 4/25/13.
//  Copyright (c) 2013 JACOB DEATON. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface CoeMapViewController : UIViewController<UIPickerViewDataSource,UIPickerViewDelegate>

@property (strong, nonatomic) IBOutlet UIPickerView *UIPickerView;
@property (strong, nonatomic) IBOutlet UILabel *Building;
@property (weak, nonatomic) IBOutlet MKMapView *mapView;


@property (strong, nonatomic) NSArray *buildingList;

-(void)cleanMap;
-(void)goArmstrong;
-(void)goAlumni;
-(void)goStuart;
-(void)goPeterson;
-(void)goStewart;
-(void)goEby;
-(void)goClarkField;
-(void)goRaquet;
-(void)goTKE;
-(void)goHickock;
-(void)goDows;
-(void)goGage;
-(void)goNassif;
-(void)goMcCabe;
-(void)goMorris;
-(void)goSpivey;
-(void)goBrandt;
-(void)goSchlarbaum;
-(void)goKohawkVillage;
-(void)goMarquis;
-(void)goGreene;
-(void)goVoorhees;
-(void)goSinclair;







@end
