#import <Kiwi/Kiwi.h>

#import "RootViewController.h"
#import "RootView.h"

SPEC_BEGIN(RootViewControllerSpec)

describe(@"RootViewController", ^{
    __block RootViewController *controller;
    
    beforeEach(^{
        controller = [RootViewController new];
    });
    
    afterEach(^{
        controller = nil;
    });
    
    describe(@"initialization", ^{
        it(@"should have proper title", ^{
            [[controller.title should] equal:@"UICollectinoView Workshops"];
        });

        it(@"should have root view loaded", ^{
            [[controller.view should] beKindOfClass:[RootView class]];
        });

        it(@"should have proper background", ^{
            RootView *view = (RootView *) controller.view;
            [[view.backgroundImageView.image should] equal:[UIImage imageNamed:@"background@2x.jpg"]];
        });
    });
});

SPEC_END
