//
//  HTAllOrientationNavigationController.m
//  LayoutAlternatives
//
//  Created by Hugo Tunius on 02/07/14.
//  Copyright (c) 2014 Hugo Tunius. All rights reserved.
//

#import "HTAllOrientationNavigationController.h"

@interface HTAllOrientationNavigationController ()

@end

@implementation HTAllOrientationNavigationController

- (NSUInteger)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskAll;
}

@end
