//
//  HTStandardAutoLayoutView.m
//  LayoutAlternatives
//
//  Created by Hugo Tunius on 20/03/14.
//  Copyright (c) 2014 Hugo Tunius. All rights reserved.
//

#import "HTStandardAutoLayoutView.h"

@interface HTStandardAutoLayoutView ()
- (void)addSizeConstraints:(UIView *)view;
@end

@implementation HTStandardAutoLayoutView

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        //
    }
    return self;
}

- (void)setup {
    for (UIView *v in self.views) {
        [self addSizeConstraints:v];
    }

    UIView *first = self.views[0];
    NSLayoutConstraint *lc = [NSLayoutConstraint constraintWithItem:first
                                                          attribute:NSLayoutAttributeTop
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self
                                                          attribute:NSLayoutAttributeTop
                                                         multiplier:0
                                                           constant:0];
    [self addConstraint:lc];
    lc = [NSLayoutConstraint constraintWithItem:first
                                      attribute:NSLayoutAttributeLeft
                                      relatedBy:NSLayoutRelationEqual
                                         toItem:self
                                      attribute:NSLayoutAttributeLeft
                                     multiplier:0
                                       constant:0];
    [self addConstraint:lc];

    UIView *second = self.views[1];
    lc = [NSLayoutConstraint constraintWithItem:second
                                      attribute:NSLayoutAttributeTop
                                      relatedBy:NSLayoutRelationEqual
                                         toItem:self
                                      attribute:NSLayoutAttributeTop
                                     multiplier:0
                                       constant:0];
    [self addConstraint:lc];

    lc = [NSLayoutConstraint constraintWithItem:second
                                      attribute:NSLayoutAttributeLeading
                                      relatedBy:NSLayoutRelationEqual
                                         toItem:first
                                      attribute:NSLayoutAttributeTrailing
                                     multiplier:1.0
                                       constant:0];
    [self addConstraint:lc];

    UIView *third = self.views[2];
    lc = [NSLayoutConstraint constraintWithItem:third
                                      attribute:NSLayoutAttributeLeft
                                      relatedBy:NSLayoutRelationEqual
                                         toItem:self
                                      attribute:NSLayoutAttributeLeft
                                     multiplier:0
                                       constant:0];
    [self addConstraint:lc];

    lc = [NSLayoutConstraint constraintWithItem:third
                                      attribute:NSLayoutAttributeTop
                                      relatedBy:NSLayoutRelationEqual
                                         toItem:first
                                      attribute:NSLayoutAttributeBottom
                                     multiplier:1.0
                                       constant:0];
    [self addConstraint:lc];

    UIView *fourth = self.views[3];
    lc = [NSLayoutConstraint constraintWithItem:fourth
                                      attribute:NSLayoutAttributeLeading
                                      relatedBy:NSLayoutRelationEqual
                                         toItem:first
                                      attribute:NSLayoutAttributeTrailing
                                     multiplier:1.0
                                       constant:0];
    [self addConstraint:lc];

    lc = [NSLayoutConstraint constraintWithItem:fourth
                                      attribute:NSLayoutAttributeTop
                                      relatedBy:NSLayoutRelationEqual
                                         toItem:first
                                      attribute:NSLayoutAttributeBottom
                                     multiplier:1.0
                                       constant:0];
    [self addConstraint:lc];
}

- (void)addSizeConstraints:(UIView *)view {
    NSLayoutConstraint *lc = [NSLayoutConstraint constraintWithItem:view
                                                          attribute:NSLayoutAttributeWidth
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self
                                                          attribute:NSLayoutAttributeWidth
                                                         multiplier:0.5
                                                           constant:0];
    [self addConstraint:lc];
    lc = [NSLayoutConstraint constraintWithItem:view
                                      attribute:NSLayoutAttributeHeight
                                      relatedBy:NSLayoutRelationEqual
                                         toItem:self
                                      attribute:NSLayoutAttributeHeight
                                     multiplier:0.5
                                       constant:0];
    [self addConstraint:lc];
}

@end
