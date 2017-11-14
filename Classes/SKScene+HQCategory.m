//
//  SKScene+HQCategory.m
//  Aspects
//
//  Created by 刘欢庆 on 2017/11/14.
//

#import "SKScene+HQCategory.h"
#import <Aspects/Aspects.h>
#import "SKNode+HQCategory.h"
@implementation SKScene (HQCategory)
+ (void)load
{
    [self aspect_hookSelector:@selector(didMoveToView:) withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> aspectInfo,SKView *view){
        [(SKScene *)(aspectInfo.instance) hq_didMoveToView:view];
    }error:NULL];
    
}


- (void)hq_didMoveToView:(SKView *)view
{
    for (SKNode *node in self.children)
    {
        [node sceneDidMoveToView:view];
    }
}

@end
