//
//  CoeMapViewController.m
//  CoeApp
//
//  Created by JACOB DEATON on 2/17/13.
//  Copyright (c) 2013 TIMOTHY AHLINE. All rights reserved.
//

#import "CoeMapViewController.h"

@interface CoeMapViewController ()

@end

@implementation CoeMapViewController
@synthesize mapView;


- (void)viewDidLoad
{
    [self goLocation];
    
    
    [super viewDidLoad];

}

-(void)goLocation
{
    
    
    //Create Region
    mapView.mapType= MKMapTypeSatellite;
    MKCoordinateRegion newRegion;
    newRegion.center.latitude = 41.98854;
    newRegion.center.longitude = -91.657519;
    newRegion.span.latitudeDelta = 0.004984;
    newRegion.span.longitudeDelta = 0.007499;
    
    CLLocationCoordinate2D AlumniHouse;
    AlumniHouse.latitude = 41.987551;
    AlumniHouse.longitude = -91.655856;
    
    
    MKPointAnnotation *AlumniHouseAnnotation = [[MKPointAnnotation alloc] init];
    [AlumniHouseAnnotation setCoordinate: AlumniHouse];
    [AlumniHouseAnnotation setTitle:@"Clark Alumni House"];
    [self.mapView removeAnnotations:self.mapView.annotations];
    [self.mapView addAnnotation:AlumniHouseAnnotation];
    
    CLLocationCoordinate2D StuartHall;
    StuartHall.latitude = 41.986291;
    StuartHall.longitude = -91.656361;
    
    MKPointAnnotation *StuartHallAnnotation = [[MKPointAnnotation alloc] init];
    [StuartHallAnnotation setCoordinate: StuartHall];
    [StuartHallAnnotation setTitle:@"Stuart Hall"];
    // [self.mapView removeAnnotations:self.mapView.annotations];
    [self.mapView addAnnotation:StuartHallAnnotation];
    
    CLLocationCoordinate2D PetersonHall;
    PetersonHall.latitude = 41.986865;
    PetersonHall.longitude = -91.656822;
    
    MKPointAnnotation *PetersonHallAnnotation = [[MKPointAnnotation alloc] init];
    [PetersonHallAnnotation setCoordinate: PetersonHall];
    [PetersonHallAnnotation setTitle:@"Peterson Hall"];
    // [self.mapView removeAnnotations:self.mapView.annotations];
    [self.mapView addAnnotation:PetersonHallAnnotation];
    
    CLLocationCoordinate2D StewartMemorial;
    StewartMemorial.latitude = 41.987519;
    StewartMemorial.longitude = -91.658421;
    
    
    MKPointAnnotation *StewartMemorialAnnotation = [[MKPointAnnotation alloc] init];
    [StewartMemorialAnnotation setCoordinate: StewartMemorial];
    [StewartMemorialAnnotation setTitle:@"Stewart Memorial Library"];
    // [self.mapView removeAnnotations:self.mapView.annotations];
    [self.mapView addAnnotation:StewartMemorialAnnotation];
    
    
    CLLocationCoordinate2D EbyFieldhouse;
    EbyFieldhouse.latitude = 41.988994;
    EbyFieldhouse.longitude = -91.659907;
    
    MKPointAnnotation *EbyAnnotation = [[MKPointAnnotation alloc] init];
    [EbyAnnotation setCoordinate: EbyFieldhouse];
    [EbyAnnotation setTitle:@"Eby Fieldhouse"];
    //[self.mapView removeAnnotations:self.mapView.annotations];
    [self.mapView addAnnotation:EbyAnnotation];
    
    CLLocationCoordinate2D GreenHall;
    GreenHall.latitude = 41.986698;
    GreenHall.longitude = -91.658871;
    
    MKPointAnnotation *GreenHallAnnotation = [[MKPointAnnotation alloc] init];
    [GreenHallAnnotation setCoordinate: GreenHall];
    [GreenHallAnnotation setTitle:@"Green Hall"];
    // [self.mapView removeAnnotations:self.mapView.annotations];
    [self.mapView addAnnotation:GreenHallAnnotation];
    
    CLLocationCoordinate2D VoorheesHall;
    VoorheesHall.latitude = 41.987607;
    VoorheesHall.longitude = -91.657326;
    
    MKPointAnnotation *VoorheesAnnotation = [[MKPointAnnotation alloc] init];
    [VoorheesAnnotation setCoordinate: VoorheesHall];
    [VoorheesAnnotation setTitle:@"Voorhees Hall"];
    // [self.mapView removeAnnotations:self.mapView.annotations];
    [self.mapView addAnnotation:VoorheesAnnotation];
    
    CLLocationCoordinate2D ClarkField;
    ClarkField.latitude = 41.990757;
    ClarkField.longitude = -91.656704;
    
    MKPointAnnotation *ClarkFieldAnnotation = [[MKPointAnnotation alloc] init];
    [ClarkFieldAnnotation setCoordinate: ClarkField];
    [ClarkFieldAnnotation setTitle:@"Clark Field"];
    // [self.mapView removeAnnotations:self.mapView.annotations];
    [self.mapView addAnnotation:ClarkFieldAnnotation];
    
    CLLocationCoordinate2D RacquetCenter;
    RacquetCenter.latitude = 41.989999;
    RacquetCenter.longitude = -91.657605;
    
    MKPointAnnotation *RacquetCenterAnnotation = [[MKPointAnnotation alloc] init];
    [RacquetCenterAnnotation setCoordinate: RacquetCenter];
    [RacquetCenterAnnotation setTitle:@"Clark Racquet Center"];
    //[self.mapView removeAnnotations:self.mapView.annotations];
    [self.mapView addAnnotation:RacquetCenterAnnotation];
    
    
    
    
    [self.mapView setRegion:newRegion animated:YES];
    
}



@end
