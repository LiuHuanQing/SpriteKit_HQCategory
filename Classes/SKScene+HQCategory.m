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
    [self hq_didMoveToView:view children:self];
}

- (void)hq_didMoveToView:(SKView *)view children:(SKNode *)node
{
    [node sceneDidMoveToView:view];
    if(node.children.count == 0) return;
    for (SKNode *subnode in node.children)
    {
        [self hq_didMoveToView:view children:subnode];
    }
}



@end
