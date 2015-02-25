//
//  PPOverviewHeaderView.m
//  Pennypot
//
//  Created by Matthew Nydam on 19/11/14.
//  Copyright (c) 2014 PP. All rights reserved.
//

#import "PPOverviewHeaderView.h"

#import "PPAnimatingAddControl.h"

#import <ViewUtils/ViewUtils.h>

@interface PPOverviewHeaderView ()

@property (nonatomic, strong) UIImageView *backgroundImageView;


@end

static const CGFloat kPadding = 20.0f;

@implementation PPOverviewHeaderView

- (id)initWithImage:(UIImage *)image
{
    self = [super init];
    if (self) {
        
        self.backgroundImageView.image = image;
        
        [self addSubview:self.backgroundImageView];
        [self addSubview:self.addButton];
        
    }
    return self;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    self.addButton.height = self.addButton.width = 50;
    self.addButton.right = self.boundsWidth - kPadding;
    self.addButton.bottom = self.boundsHeight - kPadding;
    
    self.backgroundImageView.frame = self.bounds;
    
//    self.addIcon.height = self.addIcon.width = 40.0f;
}


#pragma mark - Getters

- (PPAnimatingAddControl *)addButton
{
    if(!_addButton) {
        _addButton = [PPAnimatingAddControl new];
    }
    return _addButton;
}

- (UIImageView *)backgroundImageView
{
    if (!_backgroundImageView) {
        _backgroundImageView = [UIImageView new];
    }
    return _backgroundImageView;
}


#pragma mark - Class

+ (CGFloat)headerHeight
{
    return 200.0f;
}

@end
