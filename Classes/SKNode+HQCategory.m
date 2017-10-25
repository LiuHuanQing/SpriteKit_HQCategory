//
//  SKNode+HQCategory.m
//  BowmastersDemo
//
//  Created by 刘欢庆 on 2017/9/24.
//  Copyright © 2017年 刘欢庆. All rights reserved.
//

#import "SKNode+HQCategory.h"
#import <Aspects/Aspects.h>

@implementation SKNode (HQCategory)

+ (void)load
{
    [self aspect_hookSelector:@selector(addChild:) withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo,SKNode *node){
        [node willMoveToParent:aspectInfo.instance];
    }error:NULL];
    
    
    [self aspect_hookSelector:@selector(addChild:) withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> aspectInfo,SKNode *node){
        [node didMoveToParent];
    }error:NULL];

}



- (void)willMoveToParent:(nullable SKNode *)parent {}

- (void)didMoveToParent {}

- (void)didBeginContact:(SKPhysicsContact *)contact {}

- (void)didEndContact:(SKPhysicsContact *)contact {}

@end
