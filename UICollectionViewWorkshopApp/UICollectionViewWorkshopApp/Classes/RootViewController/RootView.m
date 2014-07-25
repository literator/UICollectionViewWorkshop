#import "RootView.h"


@implementation RootView

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"background@2x.jpg"]];
        imageView.contentMode = UIViewContentModeScaleAspectFit;
        [self addSubview:imageView];
        _backgroundImageView = imageView;
    }

    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    self.backgroundImageView.frame = self.bounds;
}

@end
