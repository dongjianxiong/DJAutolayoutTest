//
//  DJLabelTestUIView.m
//  DJAutolayoutTest
//
//  Created by ioser on 2018/12/19.
//  Copyright © 2018年 Lenny. All rights reserved.
//

#import "DJLabelTestUIView.h"

@implementation DJLabelTestUIView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        UILabel *leftLabel = [[UILabel alloc] init];
        leftLabel.font = [UIFont systemFontOfSize:15];
        leftLabel.backgroundColor = [UIColor redColor];
        leftLabel.text = @"leftLabelleftLabelleftLabel";
        leftLabel.textAlignment = NSTextAlignmentCenter;
        [self addSubview:leftLabel];
        
        UILabel *midleLabel = [[UILabel alloc] init];
        midleLabel.font = [UIFont systemFontOfSize:15];
        midleLabel.backgroundColor = [UIColor greenColor];
        midleLabel.text = @"midleLabelmidleLabelmidleLabelrightLabelUILayoutPriorityDefaultHigh";//midleLabelmidleLabelrightLabelUILayoutPriorityDefaultHigh
        midleLabel.textAlignment = NSTextAlignmentCenter;
        [self addSubview:midleLabel];
        
        UILabel *rightLabel = [[UILabel alloc] init];
        rightLabel.font = [UIFont systemFontOfSize:15];
        rightLabel.backgroundColor = [UIColor blueColor];
        rightLabel.text = @"rightLabelrightLabelrightLabel";
        rightLabel.textAlignment = NSTextAlignmentCenter;
        [self addSubview:rightLabel];
        
        [leftLabel setTranslatesAutoresizingMaskIntoConstraints:NO];
        [midleLabel setTranslatesAutoresizingMaskIntoConstraints:NO];
        [rightLabel setTranslatesAutoresizingMaskIntoConstraints:NO];
        
        [self addConstraint:[NSLayoutConstraint constraintWithItem:leftLabel attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeCenterY multiplier:1 constant:0]];
        [self addConstraint:[NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:midleLabel attribute:NSLayoutAttributeCenterY multiplier:1 constant:0]];
        [self addConstraint:[NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:rightLabel attribute:NSLayoutAttributeCenterY multiplier:1 constant:0]];

        [self addConstraint:[NSLayoutConstraint constraintWithItem:midleLabel attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:20]];
        [self addConstraint:[NSLayoutConstraint constraintWithItem:rightLabel attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:20]];
        [self addConstraint:[NSLayoutConstraint constraintWithItem:leftLabel attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:20]];

//        [leftLabel setContentCompressionResistancePriority:UILayoutPriorityDefaultHigh forAxis:UILayoutConstraintAxisHorizontal];
//        [rightLabel setContentCompressionResistancePriority:UILayoutPriorityDefaultLow forAxis:UILayoutConstraintAxisHorizontal];
//        [midleLabel setContentHuggingPriority:UILayoutPriorityDefaultLow forAxis:UILayoutConstraintAxisHorizontal];
        [midleLabel setContentCompressionResistancePriority:751 forAxis:UILayoutConstraintAxisHorizontal];
//        [leftLabel setContentHuggingPriority:UILayoutPriorityDefaultHigh forAxis:UILayoutConstraintAxisHorizontal];
//        [rightLabel setContentHuggingPriority:UILayoutPriorityDefaultHigh forAxis:UILayoutConstraintAxisHorizontal];
        
        [self addConstraint:[NSLayoutConstraint constraintWithItem:leftLabel attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationGreaterThanOrEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:80]];
        [self addConstraint:[NSLayoutConstraint constraintWithItem:rightLabel attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationGreaterThanOrEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:40]];
        
        [self addConstraint:[NSLayoutConstraint constraintWithItem:leftLabel attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeLeft multiplier:1 constant:0]];
        [self addConstraint:[NSLayoutConstraint constraintWithItem:leftLabel attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:midleLabel attribute:NSLayoutAttributeLeft multiplier:1 constant:0]];
        [self addConstraint:[NSLayoutConstraint constraintWithItem:midleLabel attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:rightLabel attribute:NSLayoutAttributeLeft multiplier:1 constant:0]];
        [self addConstraint:[NSLayoutConstraint constraintWithItem:rightLabel attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeRight multiplier:1 constant:0]];
    

    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
