@import UIKit;

#import "UITapticEngine.h"

@interface UIDevice (Private)

- (UITapticEngine *)tapticEngine;

- (UITapticEngine *)_tapticEngine;

@end