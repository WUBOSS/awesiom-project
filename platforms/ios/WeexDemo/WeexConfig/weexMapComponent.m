//
//  weexMapComponent.m
//  WeexDemo
//
//  Created by zhanshu1 on 2017/10/12.
//  Copyright © 2017年 taobao. All rights reserved.
//

#import "weexMapComponent.h"
#import <AMapFoundationKit/AMapFoundationKit.h>
#import <MAMapKit/MAMapKit.h>
#define mapkey @"mapkey"
#import "UIColor+NotRGB.h"
@interface weexMapComponent()<MAMapViewDelegate>
@property(nonatomic,strong)MAMapView *mapview;
@end
@implementation weexMapComponent
WX_EXPORT_METHOD(@selector(isAbroad:))
WX_EXPORT_METHOD(@selector(metersPerPointForCurrentZoom:))
WX_EXPORT_METHOD(@selector(logoSize:))
WX_EXPORT_METHOD(@selector(scaleSize:))
WX_EXPORT_METHOD(@selector(compassSize:))
#pragma mark method export
-(void)isAbroad:(WXModuleCallback)callBack
{
    callBack(@(self.mapview.isAbroad));
}
-(void)metersPerPointForCurrentZoom:(WXModuleCallback)callBack
{
    callBack(@(self.mapview.metersPerPointForCurrentZoom));
}
-(void)logoSize:(WXModuleCallback)callBack
{
    
    callBack(@{@"width":@(self.mapview.logoSize.width),@"height":@(self.mapview.logoSize.height)});
}
-(void)compassSize:(WXModuleCallback)callBack
{
    
    callBack(@{@"width":@(self.mapview.compassSize.width),@"height":@(self.mapview.compassSize.height)});
}
-(void)scaleSize:(WXModuleCallback)callBack
{
    
    callBack(@{@"width":@(self.mapview.scaleSize.width),@"height":@(self.mapview.scaleSize.height)});
}
-(instancetype)initWithRef:(NSString *)ref type:(NSString *)type styles:(NSDictionary *)styles attributes:(NSDictionary *)attributes events:(NSArray *)events weexInstance:(WXSDKInstance *)weexInstance
{
    if (self = [super initWithRef:ref type:type styles:styles attributes:attributes events:events weexInstance:weexInstance]) {
        
       
        [self parseAttributes:attributes];
        
    }
    return self;
}
-(void)parseAttributes:(NSDictionary *)attributes
{
    NSArray *alleys=attributes.allKeys;
    
    dispatch_async(dispatch_get_main_queue(), ^{
        // UI更新代码
        if([alleys containsObject:mapkey])
        {
            [AMapServices sharedServices].apiKey=[attributes objectForKey:mapkey];
            
        }
        if ([alleys containsObject:@"mapType"])
        {
            self.mapview.mapType=[[attributes objectForKey:@"mapType"] intValue];
        }
        if ([alleys containsObject:@"centerCoordinate"]&&[[attributes objectForKey:@"centerCoordinate"] isKindOfClass:[NSDictionary class]])
        {
            self.mapview.centerCoordinate=CLLocationCoordinate2DMake([[[attributes objectForKey:@"centerCoordinate"] objectForKey:@"latitude"] doubleValue], [[[attributes objectForKey:@"centerCoordinate"] objectForKey:@"longitude"] doubleValue])  ;
        }
        if ([alleys containsObject:@"zoomLevel"])
        {
            self.mapview.zoomLevel=[[attributes objectForKey:@"zoomLevel"] intValue];
            
        }
        if ([alleys containsObject:@"runLoopMode"])
        {
            self.mapview.runLoopMode=[attributes objectForKey:@"runLoopMode"] ;
            
        }
        if ([alleys containsObject:@"screenAnchor"]&&[[attributes objectForKey:@"screenAnchor"] isKindOfClass:[NSDictionary class]])
        {
            self.mapview.screenAnchor=CGPointMake([[[attributes objectForKey:@"screenAnchor"] objectForKey:@"x"] doubleValue], [[[attributes objectForKey:@"screenAnchor"] objectForKey:@"y"] doubleValue]) ;
            
            
        }
        if ([alleys containsObject:@"openGLESDisabled"])
        {
            self.mapview.openGLESDisabled=[[attributes objectForKey:@"openGLESDisabled"] boolValue
                                           ] ;
            
        }
        if ([alleys containsObject:@"isAllowDecreaseFrame"])
        {
            self.mapview.isAllowDecreaseFrame=[[attributes objectForKey:@"isAllowDecreaseFrame"] boolValue
                                           ] ;
            
        }
        if ([alleys containsObject:@"maxRenderFrame"])
        {
            self.mapview.maxRenderFrame=[[attributes objectForKey:@"maxRenderFrame"] intValue
                                               ] ;
            
        }
        if ([alleys containsObject:@"showsScale"])
        {
            self.mapview.showsScale=[[attributes objectForKey:@"showsScale"] boolValue
                                           ] ;
            
        }
        if ([alleys containsObject:@"showsCompass"])
        {
            self.mapview.showsCompass=[[attributes objectForKey:@"showsCompass"] boolValue
                                     ] ;
            
        }
        
        if ([alleys containsObject:@"showTraffic"])
        {
            self.mapview.showTraffic=[[attributes objectForKey:@"showTraffic"] boolValue
                                       ] ;
            
        }
        if ([alleys containsObject:@"touchPOIEnabled"])
        {
            self.mapview.touchPOIEnabled=[[attributes objectForKey:@"touchPOIEnabled"] boolValue
                                      ] ;
            
        }
        if ([alleys containsObject:@"trafficRatio"])
        {
            
            self.mapview.trafficRatio=[[attributes objectForKey:@"trafficRatio"] floatValue
                                          ] ;
            
        }
        if ([alleys containsObject:@"trafficStatus"]&&[[attributes objectForKey:@"trafficStatus"] isKindOfClass:[NSDictionary class]])
        {
            NSDictionary * traffic=[attributes objectForKey:@"trafficStatus"];
            NSMutableDictionary *colors=[NSMutableDictionary dictionary];
            if([traffic.allKeys containsObject:@"1"])
            {
                colors[@(1)]=[UIColor colorWithHexString:[traffic objectForKey:@"1"]];
            }
            if([traffic.allKeys containsObject:@"2"])
            {
                colors[@(2)]=[UIColor colorWithHexString:[traffic objectForKey:@"2"]];
            }
            if([traffic.allKeys containsObject:@"3"])
            {
                colors[@(3)]=[UIColor colorWithHexString:[traffic objectForKey:@"3"]];
            }
            if([traffic.allKeys containsObject:@"4"])
            {
                colors[@(4)]=[UIColor colorWithHexString:[traffic objectForKey:@"4"]];
            }
            self.mapview.trafficStatus=colors;
        }
        if ([alleys containsObject:@"rotateCameraEnabled"])
        {
            
            self.mapview.rotateCameraEnabled=[[attributes objectForKey:@"rotateCameraEnabled"] boolValue
                                       ] ;
            
        }
        if ([alleys containsObject:@"skyModelEnable"])
        {
            
            self.mapview.skyModelEnable=[[attributes objectForKey:@"skyModelEnable"] boolValue
                                       ] ;
            
        }
        if ([alleys containsObject:@"showsBuildings"])
        {
            
            self.mapview.showsBuildings=[[attributes objectForKey:@"showsBuildings"] boolValue
                                       ] ;
            
        }
        if ([alleys containsObject:@"showsLabels"])
        {
            
            self.mapview.showsLabels=[[attributes objectForKey:@"showsLabels"] boolValue
                                       ] ;
            
        }
        if ([alleys containsObject:@"zoomEnabled"])
        {
            
            self.mapview.zoomEnabled=[[attributes objectForKey:@"zoomEnabled"] boolValue
                                         ] ;
            
        }
        if ([alleys containsObject:@"scrollEnabled"])
        {
            
            self.mapview.scrollEnabled=[[attributes objectForKey:@"scrollEnabled"] boolValue
                                         ] ;
            
        }
        if ([alleys containsObject:@"rotateEnabled"])
        {
            
            self.mapview.rotateEnabled=[[attributes objectForKey:@"rotateEnabled"] boolValue
                                      ] ;
            
        }
        if ([alleys containsObject:@"minZoomLevel"])
        {
            self.mapview.minZoomLevel=[[attributes objectForKey:@"minZoomLevel"] floatValue
                                       ] ;
            
            
        }
        if ([alleys containsObject:@"maxZoomLevel"])
        {
            
            self.mapview.maxZoomLevel=[[attributes objectForKey:@"maxZoomLevel"] floatValue
                                         ] ;
            
        }
        if ([alleys containsObject:@"rotationDegree"])
        {
            
            self.mapview.rotationDegree=[[attributes objectForKey:@"rotationDegree"] floatValue
                                       ] ;
            
        }
        if ([alleys containsObject:@"cameraDegree"])
        {
            
            self.mapview.cameraDegree=[[attributes objectForKey:@"cameraDegree"] floatValue
                                                           ] ;
        }
        if ([alleys containsObject:@"zoomingInPivotsAroundAnchorPoint"])
        {
            
            self.mapview.zoomingInPivotsAroundAnchorPoint=[[attributes objectForKey:@"zoomingInPivotsAroundAnchorPoint"] boolValue
                                                           ] ;
            
        }
        
        
        

    });
    
    
}
-(void)viewDidLoad
{
    [super viewDidLoad];
    
    
}
-(void)layoutDidFinish
{
    [super layoutDidFinish];
    if ([[ self.attributes objectForKey:@"logoCenter"] isKindOfClass:[NSDictionary class]])
    {
        self.mapview.logoCenter=CGPointMake([[[self.attributes objectForKey:@"logoCenter"] objectForKey:@"x"] doubleValue], [[[self.attributes objectForKey:@"logoCenter"] objectForKey:@"y"] doubleValue]) ;
        
        
        
    }
    if ([[self.attributes objectForKey:@"scaleOrigin"] isKindOfClass:[NSDictionary class]])
    {
        self.mapview.scaleOrigin=CGPointMake([[[self.attributes objectForKey:@"scaleOrigin"] objectForKey:@"x"] doubleValue], [[[self.attributes objectForKey:@"scaleOrigin"] objectForKey:@"y"] doubleValue]) ;
        
        
    }
    if ([[self.attributes objectForKey:@"compassOrigin"] isKindOfClass:[NSDictionary class]])
    {
        self.mapview.compassOrigin=CGPointMake([[[self.attributes objectForKey:@"compassOrigin"] objectForKey:@"x"] doubleValue], [[[self.attributes objectForKey:@"compassOrigin"] objectForKey:@"y"] doubleValue]) ;
        
        
    }
    if ([[self.attributes objectForKey:@"region"] isKindOfClass:[NSDictionary class]])
    {
//        self.mapview.region= MACoordinateRegionMake(CLLocationCoordinate2DMake([[[self.attributes objectForKey:@"region"] objectForKey:@"latitude"] doubleValue], [[[self.attributes objectForKey:@"region"] objectForKey:@"longitude"] doubleValue]), MACoordinateSpanMake(10,10))  ;
//        NSLog(@"%f,%f,%f,%f",self.mapview.region.center.latitude,self.mapview.region.center.longitude,self.mapview.region.span.latitudeDelta,self.mapview.region.span.longitudeDelta);
        
    }
}
-(UIView *)loadView
{
    
    return self.mapview;
}

-(void)updateStyles:(NSDictionary *)styles
{
    [super updateStyles:styles];
    
}
-(void)updateAttributes:(NSDictionary *)attributes

{
    
    [super updateAttributes:attributes];
    [self parseAttributes:attributes];
}

-(MAMapView *)mapview
{
    if(!_mapview)
    {
        _mapview = [[MAMapView alloc] init];
        _mapview.showsUserLocation = YES;
        _mapview.zoomLevel=14;
        _mapview.delegate=self;
        _mapview.userTrackingMode = MAUserTrackingModeFollowWithHeading;
    }
    
    return _mapview;
}
-(void)insertSubview:(WXComponent *)subcomponent atIndex:(NSInteger)index
{
    [self.view addSubview:subcomponent.view];
}
-(void)willRemoveSubview:(WXComponent *)component
{
    [self.view willRemoveSubview:component.view];
}
#pragma mark mapview delegate
-(void)mapView:(MAMapView *)mapView didChangeOpenGLESDisabled:(BOOL)openGLESDisabled
{
    NSLog(@"%s",__func__);
}
-(void)mapView:(MAMapView *)mapView didTouchPois:(NSArray *)pois
{
    
}
@end
