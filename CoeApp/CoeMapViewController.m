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
-(MKAnnotationView *)mapView:(MKMapView *)mV viewForAnnotation:(id <MKAnnotation>)annotation
{
    MKAnnotationView *pinView = nil;
    if(annotation != mapView.userLocation)
    {
        static NSString *defaultPinID = @"com.invasivecode.pin";
        pinView = (MKAnnotationView *)[mapView dequeueReusableAnnotationViewWithIdentifier:defaultPinID];
        if ( pinView == nil )
            pinView = [[MKAnnotationView alloc]
                       initWithAnnotation:annotation reuseIdentifier:defaultPinID];
        
        pinView.canShowCallout = YES;
        pinView.image = [UIImage imageNamed:@"coe sports.png"];    
    }
    else {
        [mapView.userLocation setTitle:@"I am here"];
    }
    return pinView;
}


-(void)goLocation
{
     
    
    //Create Region
    mapView.mapType= MKMapTypeSatellite;
    MKCoordinateRegion newRegion;
    newRegion.center.latitude = 41.98775;
    newRegion.center.longitude = -91.657519;
    newRegion.span.latitudeDelta = 0.003389;
    newRegion.span.longitudeDelta = 0.005;
    
    
    //Create Point
    CLLocationCoordinate2D AlumniHouse;
    AlumniHouse.latitude = 41.987551;
    AlumniHouse.longitude = -91.655856;
    
    //Place Pin At Point
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
    [self.mapView addAnnotation:StuartHallAnnotation];
    
    CLLocationCoordinate2D PetersonHall;
    PetersonHall.latitude = 41.986865;
    PetersonHall.longitude = -91.656822;
    
    MKPointAnnotation *PetersonHallAnnotation = [[MKPointAnnotation alloc] init];
    [PetersonHallAnnotation setCoordinate: PetersonHall];
    [PetersonHallAnnotation setTitle:@"Peterson Hall"];
    [self.mapView addAnnotation:PetersonHallAnnotation];
    
    CLLocationCoordinate2D StewartMemorial;
    StewartMemorial.latitude = 41.987519;
    StewartMemorial.longitude = -91.658421;
    
    
    MKPointAnnotation *StewartMemorialAnnotation = [[MKPointAnnotation alloc] init];
    [StewartMemorialAnnotation setCoordinate: StewartMemorial];
    [StewartMemorialAnnotation setTitle:@"Stewart Memorial Library"];
    [self.mapView addAnnotation:StewartMemorialAnnotation];
    
    
    CLLocationCoordinate2D EbyFieldhouse;
    EbyFieldhouse.latitude = 41.988994;
    EbyFieldhouse.longitude = -91.659907;
    
    MKPointAnnotation *EbyAnnotation = [[MKPointAnnotation alloc] init];
    [EbyAnnotation setCoordinate: EbyFieldhouse];
    [EbyAnnotation setTitle:@"Eby Fieldhouse"];
    [self.mapView addAnnotation:EbyAnnotation];
    
    CLLocationCoordinate2D GreenHall;
    GreenHall.latitude = 41.986698;
    GreenHall.longitude = -91.658871;
    
    MKPointAnnotation *GreenHallAnnotation = [[MKPointAnnotation alloc] init];
    [GreenHallAnnotation setCoordinate: GreenHall];
    [GreenHallAnnotation setTitle:@"Green Hall"];
    [self.mapView addAnnotation:GreenHallAnnotation];
    
    CLLocationCoordinate2D VoorheesHall;
    VoorheesHall.latitude = 41.987607;
    VoorheesHall.longitude = -91.657326;
    
    MKPointAnnotation *VoorheesAnnotation = [[MKPointAnnotation alloc] init];
    [VoorheesAnnotation setCoordinate: VoorheesHall];
    [VoorheesAnnotation setTitle:@"Voorhees Hall"];
    [self.mapView addAnnotation:VoorheesAnnotation];
    
    CLLocationCoordinate2D ClarkField;
    ClarkField.latitude = 41.990757;
    ClarkField.longitude = -91.656704;
    
    MKPointAnnotation *ClarkFieldAnnotation = [[MKPointAnnotation alloc] init];
    [ClarkFieldAnnotation setCoordinate: ClarkField];
    [ClarkFieldAnnotation setTitle:@"Clark Field"];
    [self.mapView addAnnotation:ClarkFieldAnnotation];
    
    CLLocationCoordinate2D RacquetCenter;
    RacquetCenter.latitude = 41.989999;
    RacquetCenter.longitude = -91.657605;
    
    MKPointAnnotation *RacquetCenterAnnotation = [[MKPointAnnotation alloc] init];
    [RacquetCenterAnnotation setCoordinate: RacquetCenter];
    [RacquetCenterAnnotation setTitle:@"Clark Racquet Center"];
    [self.mapView addAnnotation:RacquetCenterAnnotation];
    
    CLLocationCoordinate2D TkeHouse;
    TkeHouse.latitude = 41.992336;
    TkeHouse.longitude = -91.656194;
    
    MKPointAnnotation *TkeHouseAnnotation = [[MKPointAnnotation alloc] init];
    [TkeHouseAnnotation setCoordinate: TkeHouse];
    [TkeHouseAnnotation setTitle:@"TKE House"];
    [self.mapView addAnnotation:TkeHouseAnnotation];
    
    CLLocationCoordinate2D MarquisHall;
    MarquisHall.latitude = 41.986445;
    MarquisHall.longitude = -91.657273;
    
    MKPointAnnotation *MarquisHallAnnotation = [[MKPointAnnotation alloc] init];
    [MarquisHallAnnotation setCoordinate: MarquisHall];
    [MarquisHallAnnotation setTitle:@"Marquis Hall"];
    [self.mapView addAnnotation:MarquisHallAnnotation];
    
    CLLocationCoordinate2D HickockHall;
    HickockHall.latitude = 41.986319;
    HickockHall.longitude = -91.658034;
    
    MKPointAnnotation *HickockAnnotation = [[MKPointAnnotation alloc] init];
    [HickockAnnotation setCoordinate: HickockHall];
    [HickockAnnotation setTitle:@"Hickock Hall"];
    [self.mapView addAnnotation:HickockAnnotation];

    
    CLLocationCoordinate2D DowsCenter;
    DowsCenter.latitude = 41.985872;
    DowsCenter.longitude = -91.657809;
    
    MKPointAnnotation *DowsAnnotation = [[MKPointAnnotation alloc] init];
    [DowsAnnotation setCoordinate: DowsCenter];
    [DowsAnnotation setTitle:@"Dows Fine Arts Center"];
    [self.mapView addAnnotation:DowsAnnotation];
    
    CLLocationCoordinate2D SinclairAuditorium;
    SinclairAuditorium.latitude = 41.986204;
    SinclairAuditorium.longitude = -91.657004;
    
    MKPointAnnotation *SinclairAnnotation = [[MKPointAnnotation alloc] init];
    [SinclairAnnotation setCoordinate: SinclairAuditorium];
    [SinclairAnnotation setTitle:@"Sinclair Auditorium"];
    [self.mapView addAnnotation:SinclairAnnotation];
    
    
    CLLocationCoordinate2D ArmstrongDouglas;
    ArmstrongDouglas.latitude = 41.987966;
    ArmstrongDouglas.longitude = -91.659719;
    
    MKPointAnnotation *ADAnnotation = [[MKPointAnnotation alloc] init];
    [ADAnnotation setCoordinate: ArmstrongDouglas];
    [ADAnnotation setTitle:@"Armstrong & Douglas Halls"];
    [self.mapView addAnnotation:ADAnnotation];
    
    CLLocationCoordinate2D GageUnion;
    GageUnion.latitude = 41.988383;
    GageUnion.longitude = -91.658211;
    
    MKPointAnnotation *GageAnnotation = [[MKPointAnnotation alloc] init];
    [GageAnnotation setCoordinate: GageUnion];
    [GageAnnotation setTitle:@"Gage Memorial Union"];
    [self.mapView addAnnotation:GageAnnotation];
    
    CLLocationCoordinate2D NassifHouse;
    NassifHouse.latitude = 41.987676;
    NassifHouse.longitude = -91.656446;
    
    MKPointAnnotation *NassifAnnotation = [[MKPointAnnotation alloc] init];
    [NassifAnnotation setCoordinate: NassifHouse];
    [NassifAnnotation setTitle:@"Nassif House"];
    [self.mapView addAnnotation:NassifAnnotation];
    
    CLLocationCoordinate2D McCabeHall;
    McCabeHall.latitude = 41.987138;
    McCabeHall.longitude = -91.655851;
    
    MKPointAnnotation *McCabeAnnotation = [[MKPointAnnotation alloc] init];
    [McCabeAnnotation setCoordinate: McCabeHall];
    [McCabeAnnotation setTitle:@"McCabe Hall"];
    [self.mapView addAnnotation:McCabeAnnotation];
    
    CLLocationCoordinate2D MorrisHouse;
    MorrisHouse.latitude = 41.988223;
    MorrisHouse.longitude = -91.656135;
    
    MKPointAnnotation *MorrisAnnotation = [[MKPointAnnotation alloc] init];
    [MorrisAnnotation setCoordinate: MorrisHouse];
    [MorrisAnnotation setTitle:@"Morris House"];
    [self.mapView addAnnotation:MorrisAnnotation];
    
    CLLocationCoordinate2D SpiveyHouse;
    SpiveyHouse.latitude = 41.988518;
    SpiveyHouse.longitude = -91.656103;
    
    MKPointAnnotation *SpiveyAnnotation = [[MKPointAnnotation alloc] init];
    [SpiveyAnnotation setCoordinate: SpiveyHouse];
    [SpiveyAnnotation setTitle:@"Spivey House"];
    [self.mapView addAnnotation:SpiveyAnnotation];
    
    CLLocationCoordinate2D BrandtHouse;
    BrandtHouse.latitude = 41.988763;
    BrandtHouse.longitude = -91.656468;
    
    MKPointAnnotation *BrandtAnnotation = [[MKPointAnnotation alloc] init];
    [BrandtAnnotation setCoordinate: BrandtHouse];
    [BrandtAnnotation setTitle:@"Brandt House"];
    [self.mapView addAnnotation:BrandtAnnotation];
    
    CLLocationCoordinate2D SchlarbaumHouse;
    SchlarbaumHouse.latitude = 41.988865;
    SchlarbaumHouse.longitude = -91.656827;
    
    MKPointAnnotation *SchlarbaumAnnotation = [[MKPointAnnotation alloc] init];
    [SchlarbaumAnnotation setCoordinate: SchlarbaumHouse];
    [SchlarbaumAnnotation setTitle:@"Schlarbaum House"];
    [self.mapView addAnnotation:SchlarbaumAnnotation];
    
    CLLocationCoordinate2D KohawkVillage;
    KohawkVillage.latitude = 41.990344;
    KohawkVillage.longitude = -91.658635;
    
    MKPointAnnotation *KohawkVillageAnnotation = [[MKPointAnnotation alloc] init];
    [KohawkVillageAnnotation setCoordinate: KohawkVillage];
    [KohawkVillageAnnotation setTitle:@"Kohawk Village"];
    [self.mapView addAnnotation:KohawkVillageAnnotation];
    
    
    [self.mapView setRegion:newRegion animated:YES];
    
}



@end
