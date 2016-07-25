//
//  MKMapView+ASCategory.h
//  PhoneOnline
//
//  Created by Kowloon on 12-8-14.
//  Copyright (c) 2012年 Goome. All rights reserved.
//

#import <MapKit/MapKit.h>

@interface MKMapView (ASCategory)

- (NSUInteger)zoomLevel;
- (void)setZoomLevel:(NSUInteger)zoomLevel animated:(BOOL)animated;
- (void)setCenterCoordinate:(CLLocationCoordinate2D)centerCoordinate zoomLevel:(NSUInteger)zoomLevel animated:(BOOL)animated;
- (void)zoomToFitAnnotations;
- (void)zoomToFitAnnotationsWithSideSpacingFactor:(CGFloat)factor;
//- (void)zoomToFitAnnotationsWithSideSpacingFactor:(CGFloat)factor annotations:(NSArray *)annotations;
- (void)removeAllAnnotations;
- (void)removeAllAnnotationsExceptUserLocation;
- (void)reloadData;
- (void)reloadAnnotationViewWithAnnotation:(id <MKAnnotation>)annotation;
- (void)setCenterCoordinate:(CLLocationCoordinate2D)coordinate animated:(BOOL)animated invalidCoordinateHandler:(void (^)(void))handler;
- (void)setRegion:(MKCoordinateRegion)region animated:(BOOL)animated invalidCoordinateHandler:(void (^)(void))handler;

- (void)zoomToFitAnnotationsWithSideSpacingFactor:(CGFloat)factor annotations:(NSArray *)annotations animated:(BOOL)animated;

@end
