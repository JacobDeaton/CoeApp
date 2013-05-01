//
//  CoeMapViewController.m
//  A
//
//  Created by JACOB DEATON on 4/25/13.
//  Copyright (c) 2013 JACOB DEATON. All rights reserved.
//

#import "CoeMapViewController.h"

@interface CoeMapViewController ()

@end

@implementation CoeMapViewController
@synthesize UIPickerView, Building, buildingList, mapView;
NSInteger myInt;


- (void)viewDidLoad
{
    [[self navigationController] setNavigationBarHidden:NO animated:NO];
    switch(myInt)
    {
        case 0:
            [self cleanMap];
            [super viewDidLoad];
            break;
        case 1:
            [self goArmstrong];
            [super viewDidLoad];
            break;
        case 2:
            [self goVoorhees];
            [super viewDidLoad];
            break;
        case 3:
            [self goGreene];
            [super viewDidLoad];
            break;
        case 4:
            [self goMarquis];
            [super viewDidLoad];
            break;
        case 5:
            [self goSinclair];
            [super viewDidLoad];
            break;
        case 6:
            [self goAlumni];
            [super viewDidLoad];
            break;
        case 7:
            [self goStuart];
            [super viewDidLoad];
            break;
        case 8:
            [self goPeterson];
            [super viewDidLoad];
            break;
        case 9:
            [self goStewart];
            [super viewDidLoad];
            break;
        case 10:
            [self goEby];
            [super viewDidLoad];
            break;
        case 11:
            [self goClarkField];
            [super viewDidLoad];
            break;
        case 12:
            [self goRacquet];
            [super viewDidLoad];
            break;
        case 13:
            [self goTKE];
            [super viewDidLoad];
            break;
        case 14:
            [self goHickock];
            [super viewDidLoad];
            break;
        case 15:
            [self goDows];
            [super viewDidLoad];
            break;
        case 16:
            [self goGage];
            [super viewDidLoad];
            break;
        case 17:
            [self goNassif];
            [super viewDidLoad];
            break;
        case 18:
            [self goMcCabe];
            [super viewDidLoad];
            break;
        case 19:
            [self goMorris];
            [super viewDidLoad];
            break;
        case 20:
            [self goSpivey];
            [super viewDidLoad];
            break;
        case 21:
            [self goBrandt];
            [super viewDidLoad];
            break;
        case 22:
            [self goSchlarbaum];
            [super viewDidLoad];
            break;
        case 23:
            [self goKohawkVillage];
            [super viewDidLoad];
            break;
        default:
            [super viewDidLoad];
            break;
    }
    self.buildingList = [[NSArray alloc] initWithObjects:@"None", @"Armstrong/Douglas", @"Voorhees", @"Greene", @"Marquis", @"Sinclair",@"Alumni House", @"Stuart Hall", @"Peterson Hall", @"Stewart Memorial Library", @"Eby Fieldhouse", @"Clark Field", @"Racquet Center", @"TKE House", @"Hickock Hall", @"Dows", @"Gage Union", @"Nassif House", @"McCabe Hall", @"Morris House", @"Spivey House", @"Brandt House", @"Schlarbaum House", @"Kohawk Village", nil];
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return self.buildingList.count;
}
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row   forComponent:(NSInteger)component
{
    return [self.buildingList objectAtIndex:row];
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    NSLog(@"Selected Row %d", row);
    switch(row)
    {
        case 0:
            myInt = row;
            [self viewDidLoad];
            break;
        case 1:
            myInt = row;
            [self viewDidLoad];
            break;
        case 2:
            myInt = row;
            [self viewDidLoad];
            break;
        case 3:
            myInt = row;
            [self viewDidLoad];
            break;
        case 4:
            myInt = row;
            [self viewDidLoad];
            break;
        case 5:
            myInt = row;
            [self viewDidLoad];
            break;
        case 6:
            myInt = row;
            [self viewDidLoad];
            break;
        case 7:
            myInt = row;
            [self viewDidLoad];
            break;
        case 8:
            myInt = row;
            [self viewDidLoad];
            break;
        case 9:
            myInt = row;
            [self viewDidLoad];
            break;
        case 10:
            myInt = row;
            [self viewDidLoad];
            break;
        case 11:
            myInt = row;
            [self viewDidLoad];
            break;
        case 12:
            myInt = row;
            [self viewDidLoad];
            break;
        case 13:
            myInt = row;
            [self viewDidLoad];
            break;
        case 14:
            myInt = row;
            [self viewDidLoad];
            break;
        case 15:
            myInt = row;
            [self viewDidLoad];
            break;
        case 16:
            myInt = row;
            [self viewDidLoad];
            break;
        case 17:
            myInt = row;
            [self viewDidLoad];
            break;
        case 18:
            myInt = row;
            [self viewDidLoad];
            break;
        case 19:
            myInt = row;
            [self viewDidLoad];
            break;
        case 20:
            myInt = row;
            [self viewDidLoad];
            break;
        case 21:
            myInt = row;
            [self viewDidLoad];
            break;
        case 22:
            myInt = row;
            [self viewDidLoad];
            break;
        case 23:
            myInt = row;
            [self viewDidLoad];
            break;
    }
    
}
-(void)cleanMap
{
    [self.mapView removeAnnotations:self.mapView.annotations];
    mapView.mapType= MKMapTypeSatellite;
    MKCoordinateRegion newRegion;
    newRegion.center.latitude = 41.98775;
    newRegion.center.longitude = -91.657519;
    newRegion.span.latitudeDelta = 0.003389;
    newRegion.span.longitudeDelta = 0.005;
    [self.mapView setRegion:newRegion animated:YES];
}

-(void)goArmstrong
{
    {
        //Create Region
        mapView.mapType= MKMapTypeSatellite;
        MKCoordinateRegion newRegion;
        newRegion.center.latitude = 41.98775;
        newRegion.center.longitude = -91.657519;
        newRegion.span.latitudeDelta = 0.003389;
        newRegion.span.longitudeDelta = 0.005;
        
        CLLocationCoordinate2D ArmstrongDouglas;
        ArmstrongDouglas.latitude = 41.987966;
        ArmstrongDouglas.longitude = -91.659719;
        
        MKPointAnnotation *ADAnnotation = [[MKPointAnnotation alloc] init];
        [ADAnnotation setCoordinate: ArmstrongDouglas];
        [ADAnnotation setTitle:@"Armstrong & Douglas Halls"];
        [self.mapView addAnnotation:ADAnnotation];
        [self.mapView setRegion:newRegion animated:YES];
    }
}
-(void)goVoorhees
{
    {
        //Create Region
        mapView.mapType= MKMapTypeSatellite;
        MKCoordinateRegion newRegion;
        newRegion.center.latitude = 41.98775;
        newRegion.center.longitude = -91.657519;
        newRegion.span.latitudeDelta = 0.003389;
        newRegion.span.longitudeDelta = 0.005;
        
        CLLocationCoordinate2D VoorheesHall;
        VoorheesHall.latitude = 41.987607;
        VoorheesHall.longitude = -91.657326;
        
        MKPointAnnotation *VoorheesAnnotation = [[MKPointAnnotation alloc] init];
        [VoorheesAnnotation setCoordinate: VoorheesHall];
        [VoorheesAnnotation setTitle:@"Voorhees Hall"];
        [self.mapView addAnnotation:VoorheesAnnotation];
        [self.mapView setRegion:newRegion animated:YES];
    }
}
-(void)goGreene
{
    {
        //Create Region
        mapView.mapType= MKMapTypeSatellite;
        MKCoordinateRegion newRegion;
        newRegion.center.latitude = 41.98775;
        newRegion.center.longitude = -91.657519;
        newRegion.span.latitudeDelta = 0.003389;
        newRegion.span.longitudeDelta = 0.005;
        
        CLLocationCoordinate2D GreenHall;
        GreenHall.latitude = 41.986698;
        GreenHall.longitude = -91.658871;
        
        MKPointAnnotation *GreenHallAnnotation = [[MKPointAnnotation alloc] init];
        [GreenHallAnnotation setCoordinate: GreenHall];
        [GreenHallAnnotation setTitle:@"Green Hall"];
        [self.mapView addAnnotation:GreenHallAnnotation];
        [self.mapView setRegion:newRegion animated:YES];
        
    }
}
-(void)goMarquis
{
    {
        //Create Region
        mapView.mapType= MKMapTypeSatellite;
        MKCoordinateRegion newRegion;
        newRegion.center.latitude = 41.98775;
        newRegion.center.longitude = -91.657519;
        newRegion.span.latitudeDelta = 0.003389;
        newRegion.span.longitudeDelta = 0.005;
        
        CLLocationCoordinate2D MarquisHall;
        MarquisHall.latitude = 41.986445;
        MarquisHall.longitude = -91.657273;
        
        MKPointAnnotation *MarquisHallAnnotation = [[MKPointAnnotation alloc] init];
        [MarquisHallAnnotation setCoordinate: MarquisHall];
        [MarquisHallAnnotation setTitle:@"Marquis Hall"];
        [self.mapView addAnnotation:MarquisHallAnnotation];
        [self.mapView setRegion:newRegion animated:YES];
    }
}
-(void)goSinclair
{
    {
        //Create Region
        mapView.mapType= MKMapTypeSatellite;
        MKCoordinateRegion newRegion;
        newRegion.center.latitude = 41.98775;
        newRegion.center.longitude = -91.657519;
        newRegion.span.latitudeDelta = 0.003389;
        newRegion.span.longitudeDelta = 0.005;
        
        CLLocationCoordinate2D SinclairAuditorium;
        SinclairAuditorium.latitude = 41.986204;
        SinclairAuditorium.longitude = -91.657004;
        
        MKPointAnnotation *SinclairAnnotation = [[MKPointAnnotation alloc] init];
        [SinclairAnnotation setCoordinate: SinclairAuditorium];
        [SinclairAnnotation setTitle:@"Sinclair Auditorium"];
        [self.mapView addAnnotation:SinclairAnnotation];
        [self.mapView setRegion:newRegion animated:YES];
    }
}
-(void)goAlumni
{
    mapView.mapType= MKMapTypeSatellite;
    MKCoordinateRegion newRegion;
    newRegion.center.latitude = 41.98775;
    newRegion.center.longitude = -91.657519;
    newRegion.span.latitudeDelta = 0.003389;
    newRegion.span.longitudeDelta = 0.005;
    
    CLLocationCoordinate2D AlumniHouse;
    AlumniHouse.latitude = 41.987551;
    AlumniHouse.longitude = -91.655856;
    
    //Place Pin At Point
    MKPointAnnotation *AlumniHouseAnnotation = [[MKPointAnnotation alloc] init];
    [AlumniHouseAnnotation setCoordinate: AlumniHouse];
    [AlumniHouseAnnotation setTitle:@"Clark Alumni House"];
    [self.mapView addAnnotation:AlumniHouseAnnotation];
    [self.mapView setRegion:newRegion animated:YES];
}
-(void)goStuart
{
    mapView.mapType= MKMapTypeSatellite;
    MKCoordinateRegion newRegion;
    newRegion.center.latitude = 41.98775;
    newRegion.center.longitude = -91.657519;
    newRegion.span.latitudeDelta = 0.003389;
    newRegion.span.longitudeDelta = 0.005;
    
    CLLocationCoordinate2D StuartHall;
    StuartHall.latitude = 41.986291;
    StuartHall.longitude = -91.656361;
    
    MKPointAnnotation *StuartHallAnnotation = [[MKPointAnnotation alloc] init];
    [StuartHallAnnotation setCoordinate: StuartHall];
    [StuartHallAnnotation setTitle:@"Stuart Hall"];
    [self.mapView addAnnotation:StuartHallAnnotation];
    [self.mapView setRegion:newRegion animated:YES];
}
-(void)goPeterson
{
    mapView.mapType= MKMapTypeSatellite;
    MKCoordinateRegion newRegion;
    newRegion.center.latitude = 41.98775;
    newRegion.center.longitude = -91.657519;
    newRegion.span.latitudeDelta = 0.003389;
    newRegion.span.longitudeDelta = 0.005;
    
    CLLocationCoordinate2D PetersonHall;
    PetersonHall.latitude = 41.986865;
    PetersonHall.longitude = -91.656822;
    
    MKPointAnnotation *PetersonHallAnnotation = [[MKPointAnnotation alloc] init];
    [PetersonHallAnnotation setCoordinate: PetersonHall];
    [PetersonHallAnnotation setTitle:@"Peterson Hall"];
    [self.mapView addAnnotation:PetersonHallAnnotation];[self.mapView setRegion:newRegion animated:YES];
}
-(void)goStewart
{
    mapView.mapType= MKMapTypeSatellite;
    MKCoordinateRegion newRegion;
    newRegion.center.latitude = 41.98775;
    newRegion.center.longitude = -91.657519;
    newRegion.span.latitudeDelta = 0.003389;
    newRegion.span.longitudeDelta = 0.005;
    
    CLLocationCoordinate2D StewartMemorial;
    StewartMemorial.latitude = 41.987519;
    StewartMemorial.longitude = -91.658421;
    
    
    MKPointAnnotation *StewartMemorialAnnotation = [[MKPointAnnotation alloc] init];
    [StewartMemorialAnnotation setCoordinate: StewartMemorial];
    [StewartMemorialAnnotation setTitle:@"Stewart Memorial Library"];
    [self.mapView addAnnotation:StewartMemorialAnnotation];[self.mapView setRegion:newRegion animated:YES];
}

-(void)goEby
{
    mapView.mapType= MKMapTypeSatellite;
    MKCoordinateRegion newRegion;
    newRegion.center.latitude = 41.98775;
    newRegion.center.longitude = -91.657519;
    newRegion.span.latitudeDelta = 0.003389;
    newRegion.span.longitudeDelta = 0.005;
    
    CLLocationCoordinate2D EbyFieldhouse;
    EbyFieldhouse.latitude = 41.988994;
    EbyFieldhouse.longitude = -91.659907;
    
    MKPointAnnotation *EbyAnnotation = [[MKPointAnnotation alloc] init];
    [EbyAnnotation setCoordinate: EbyFieldhouse];
    [EbyAnnotation setTitle:@"Eby Fieldhouse"];
    [self.mapView addAnnotation:EbyAnnotation];[self.mapView setRegion:newRegion animated:YES];
}

-(void)goClarkField
{
    mapView.mapType= MKMapTypeSatellite;
    MKCoordinateRegion newRegion;
    newRegion.center.latitude = 41.98775;
    newRegion.center.longitude = -91.657519;
    newRegion.span.latitudeDelta = 0.003389;
    newRegion.span.longitudeDelta = 0.005;
    
    CLLocationCoordinate2D ClarkField;
    ClarkField.latitude = 41.990757;
    ClarkField.longitude = -91.656704;
    
    MKPointAnnotation *ClarkFieldAnnotation = [[MKPointAnnotation alloc] init];
    [ClarkFieldAnnotation setCoordinate: ClarkField];
    [ClarkFieldAnnotation setTitle:@"Clark Field"];
    [self.mapView addAnnotation:ClarkFieldAnnotation];[self.mapView setRegion:newRegion animated:YES];
}

-(void)goRacquet
{
    mapView.mapType= MKMapTypeSatellite;
    MKCoordinateRegion newRegion;
    newRegion.center.latitude = 41.98775;
    newRegion.center.longitude = -91.657519;
    newRegion.span.latitudeDelta = 0.003389;
    newRegion.span.longitudeDelta = 0.005;
    
    CLLocationCoordinate2D RacquetCenter;
    RacquetCenter.latitude = 41.989999;
    RacquetCenter.longitude = -91.657605;
    
    MKPointAnnotation *RacquetCenterAnnotation = [[MKPointAnnotation alloc] init];
    [RacquetCenterAnnotation setCoordinate: RacquetCenter];
    [RacquetCenterAnnotation setTitle:@"Clark Racquet Center"];
    [self.mapView addAnnotation:RacquetCenterAnnotation];[self.mapView setRegion:newRegion animated:YES];
}

-(void)goTKE
{
    mapView.mapType= MKMapTypeSatellite;
    MKCoordinateRegion newRegion;
    newRegion.center.latitude = 41.98775;
    newRegion.center.longitude = -91.657519;
    newRegion.span.latitudeDelta = 0.003389;
    newRegion.span.longitudeDelta = 0.005;
    
    CLLocationCoordinate2D TkeHouse;
    TkeHouse.latitude = 41.992336;
    TkeHouse.longitude = -91.656194;
    
    MKPointAnnotation *TkeHouseAnnotation = [[MKPointAnnotation alloc] init];
    [TkeHouseAnnotation setCoordinate: TkeHouse];
    [TkeHouseAnnotation setTitle:@"TKE House"];
    [self.mapView addAnnotation:TkeHouseAnnotation];[self.mapView setRegion:newRegion animated:YES];
    
}

-(void)goHickock
{
    mapView.mapType= MKMapTypeSatellite;
    MKCoordinateRegion newRegion;
    newRegion.center.latitude = 41.98775;
    newRegion.center.longitude = -91.657519;
    newRegion.span.latitudeDelta = 0.003389;
    newRegion.span.longitudeDelta = 0.005;
    
    CLLocationCoordinate2D HickockHall;
    HickockHall.latitude = 41.986319;
    HickockHall.longitude = -91.658034;
    
    MKPointAnnotation *HickockAnnotation = [[MKPointAnnotation alloc] init];
    [HickockAnnotation setCoordinate: HickockHall];
    [HickockAnnotation setTitle:@"Hickock Hall"];
    [self.mapView addAnnotation:HickockAnnotation];[self.mapView setRegion:newRegion animated:YES];
}
-(void)goDows
{
    mapView.mapType= MKMapTypeSatellite;
    MKCoordinateRegion newRegion;
    newRegion.center.latitude = 41.98775;
    newRegion.center.longitude = -91.657519;
    newRegion.span.latitudeDelta = 0.003389;
    newRegion.span.longitudeDelta = 0.005;
    
    CLLocationCoordinate2D DowsCenter;
    DowsCenter.latitude = 41.985872;
    DowsCenter.longitude = -91.657809;
    
    MKPointAnnotation *DowsAnnotation = [[MKPointAnnotation alloc] init];
    [DowsAnnotation setCoordinate: DowsCenter];
    [DowsAnnotation setTitle:@"Dows Fine Arts Center"];
    [self.mapView addAnnotation:DowsAnnotation];[self.mapView setRegion:newRegion animated:YES];
}

-(void)goGage
{
    mapView.mapType= MKMapTypeSatellite;
    MKCoordinateRegion newRegion;
    newRegion.center.latitude = 41.98775;
    newRegion.center.longitude = -91.657519;
    newRegion.span.latitudeDelta = 0.003389;
    newRegion.span.longitudeDelta = 0.005;
    
    CLLocationCoordinate2D GageUnion;
    GageUnion.latitude = 41.988383;
    GageUnion.longitude = -91.658211;
    
    MKPointAnnotation *GageAnnotation = [[MKPointAnnotation alloc] init];
    [GageAnnotation setCoordinate: GageUnion];
    [GageAnnotation setTitle:@"Gage Memorial Union"];
    [self.mapView addAnnotation:GageAnnotation];[self.mapView setRegion:newRegion animated:YES];
}
-(void)goNassif
{
    mapView.mapType= MKMapTypeSatellite;
    MKCoordinateRegion newRegion;
    newRegion.center.latitude = 41.98775;
    newRegion.center.longitude = -91.657519;
    newRegion.span.latitudeDelta = 0.003389;
    newRegion.span.longitudeDelta = 0.005;
    
    CLLocationCoordinate2D NassifHouse;
    NassifHouse.latitude = 41.987676;
    NassifHouse.longitude = -91.656446;
    
    MKPointAnnotation *NassifAnnotation = [[MKPointAnnotation alloc] init];
    [NassifAnnotation setCoordinate: NassifHouse];
    [NassifAnnotation setTitle:@"Nassif House"];
    [self.mapView addAnnotation:NassifAnnotation];[self.mapView setRegion:newRegion animated:YES];
}

-(void)goMcCabe
{
    mapView.mapType= MKMapTypeSatellite;
    MKCoordinateRegion newRegion;
    newRegion.center.latitude = 41.98775;
    newRegion.center.longitude = -91.657519;
    newRegion.span.latitudeDelta = 0.003389;
    newRegion.span.longitudeDelta = 0.005;
    
    CLLocationCoordinate2D McCabeHall;
    McCabeHall.latitude = 41.987138;
    McCabeHall.longitude = -91.655851;
    
    MKPointAnnotation *McCabeAnnotation = [[MKPointAnnotation alloc] init];
    [McCabeAnnotation setCoordinate: McCabeHall];
    [McCabeAnnotation setTitle:@"McCabe Hall"];
    [self.mapView addAnnotation:McCabeAnnotation];[self.mapView setRegion:newRegion animated:YES];
}
-(void)goMorris
{
    mapView.mapType= MKMapTypeSatellite;
    MKCoordinateRegion newRegion;
    newRegion.center.latitude = 41.98775;
    newRegion.center.longitude = -91.657519;
    newRegion.span.latitudeDelta = 0.003389;
    newRegion.span.longitudeDelta = 0.005;
    
    CLLocationCoordinate2D MorrisHouse;
    MorrisHouse.latitude = 41.988223;
    MorrisHouse.longitude = -91.656135;
    
    MKPointAnnotation *MorrisAnnotation = [[MKPointAnnotation alloc] init];
    [MorrisAnnotation setCoordinate: MorrisHouse];
    [MorrisAnnotation setTitle:@"Morris House"];
    [self.mapView addAnnotation:MorrisAnnotation];[self.mapView setRegion:newRegion animated:YES];
}

-(void)goSpivey
{
    
    mapView.mapType= MKMapTypeSatellite;
    MKCoordinateRegion newRegion;
    newRegion.center.latitude = 41.98775;
    newRegion.center.longitude = -91.657519;
    newRegion.span.latitudeDelta = 0.003389;
    newRegion.span.longitudeDelta = 0.005;
    
    CLLocationCoordinate2D SpiveyHouse;
    SpiveyHouse.latitude = 41.988518;
    SpiveyHouse.longitude = -91.656103;
    
    MKPointAnnotation *SpiveyAnnotation = [[MKPointAnnotation alloc] init];
    [SpiveyAnnotation setCoordinate: SpiveyHouse];
    [SpiveyAnnotation setTitle:@"Spivey House"];
    [self.mapView addAnnotation:SpiveyAnnotation];[self.mapView setRegion:newRegion animated:YES];
}
-(void)goBrandt
{
    mapView.mapType= MKMapTypeSatellite;
    MKCoordinateRegion newRegion;
    newRegion.center.latitude = 41.98775;
    newRegion.center.longitude = -91.657519;
    newRegion.span.latitudeDelta = 0.003389;
    newRegion.span.longitudeDelta = 0.005;
    
    CLLocationCoordinate2D BrandtHouse;
    BrandtHouse.latitude = 41.988763;
    BrandtHouse.longitude = -91.656468;
    
    MKPointAnnotation *BrandtAnnotation = [[MKPointAnnotation alloc] init];
    [BrandtAnnotation setCoordinate: BrandtHouse];
    [BrandtAnnotation setTitle:@"Brandt House"];
    [self.mapView addAnnotation:BrandtAnnotation];[self.mapView setRegion:newRegion animated:YES];
}

-(void)goSchlarbaum
{
    mapView.mapType= MKMapTypeSatellite;
    MKCoordinateRegion newRegion;
    newRegion.center.latitude = 41.98775;
    newRegion.center.longitude = -91.657519;
    newRegion.span.latitudeDelta = 0.003389;
    newRegion.span.longitudeDelta = 0.005;
    
    CLLocationCoordinate2D SchlarbaumHouse;
    SchlarbaumHouse.latitude = 41.988865;
    SchlarbaumHouse.longitude = -91.656827;
    
    MKPointAnnotation *SchlarbaumAnnotation = [[MKPointAnnotation alloc] init];
    [SchlarbaumAnnotation setCoordinate: SchlarbaumHouse];
    [SchlarbaumAnnotation setTitle:@"Schlarbaum House"];
    [self.mapView addAnnotation:SchlarbaumAnnotation];[self.mapView setRegion:newRegion animated:YES];
}

-(void)goKohawkVillage
{
    mapView.mapType= MKMapTypeSatellite;
    MKCoordinateRegion newRegion;
    newRegion.center.latitude = 41.98775;
    newRegion.center.longitude = -91.657519;
    newRegion.span.latitudeDelta = 0.003389;
    newRegion.span.longitudeDelta = 0.005;
    
    CLLocationCoordinate2D KohawkVillage;
    KohawkVillage.latitude = 41.990344;
    KohawkVillage.longitude = -91.658635;
    
    MKPointAnnotation *KohawkVillageAnnotation = [[MKPointAnnotation alloc] init];
    [KohawkVillageAnnotation setCoordinate: KohawkVillage];
    [KohawkVillageAnnotation setTitle:@"Kohawk Village"];
    [self.mapView addAnnotation:KohawkVillageAnnotation];[self.mapView setRegion:newRegion animated:YES];
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    [[self navigationController] setNavigationBarHidden:YES animated:NO];
}


@end
