//
//  TapticEngine.m
//  ViewControllerPreview
//
//  Created by Dal Rupnik on 28/09/15.
//  Copyright © 2015 Apple Inc. All rights reserved.
//

#import <Aspects/Aspects.h>
#import "UITapticEngine.h"
#import "UIDevice+Private.h"

#import "TapticEngine.h"

@implementation TapticEngine

+ (void)load
{
    UITapticEngine *tapticEngine = [UIDevice currentDevice]._tapticEngine;
    
    [tapticEngine aspect_hookSelector:@selector(actuateFeedback:) withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> arg1){
        NSLog(@"actuateFeedback: %@", arg1.arguments);
    }error:nil];
    
    [tapticEngine aspect_hookSelector:@selector(endUsingFeedback:) withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> arg1){
        NSLog(@"endUsingFeedback: %@", arg1.arguments);
    }error:nil];
    
    [tapticEngine aspect_hookSelector:@selector(prepareUsingFeedback:) withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> arg1){
        NSLog(@"prepareUsingFeedback: %@", arg1.arguments);
    }error:nil];
}

@end
