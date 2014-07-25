#import "RootViewController.h"
#import "RootView.h"


@implementation RootViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"UICollectinoView Workshops";
    }

    return self;
}

- (void)loadView {
    self.view = [RootView new];
}

@end
