//
//  RHColoredToolbar.m
//  RHColoredToolbar
//

#import "RHColoredToolbar.h"

@interface RHColoredToolbar ()

@property (strong, nonatomic) CALayer *extraColorLayer;

@end

static CGFloat const kDefaultColorLayerOpacity = .7f;

@implementation RHColoredToolbar

#pragma mark - Instance

- (CALayer *)extraColorLayer {
    if (_extraColorLayer) {
        return _extraColorLayer;
    }

    _extraColorLayer = [CALayer layer];
    _extraColorLayer.opacity = kDefaultColorLayerOpacity;
    [self.layer addSublayer:_extraColorLayer];

    return _extraColorLayer;
}

#pragma mark - UIView

- (void)layoutSubviews {
    [super layoutSubviews];

    if (self.extraColorLayer) {
        self.extraColorLayer.frame = self.frame;
    }

    [self.extraColorLayer removeFromSuperlayer];
    [self.layer insertSublayer:_extraColorLayer atIndex:1];
}

#pragma mark - UIToolbar

- (void)setBarTintColor:(UIColor *)barTintColor {
    [super setBarTintColor:barTintColor];

    self.extraColorLayer.backgroundColor = barTintColor.CGColor;
}

@end
