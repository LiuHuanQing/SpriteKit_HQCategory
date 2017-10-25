//
//  SKNode+HQCategory.h
//  BowmastersDemo
//
//  Created by 刘欢庆 on 2017/9/24.
//  Copyright © 2017年 刘欢庆. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface SKNode (HQCategory)

/** 将要移到父节点 */
- (void)willMoveToParent:(nullable SKNode *)parent;

/** 已经移到父节点 */
- (void)didMoveToParent;

- (void)didBeginContact:(nullable SKPhysicsContact *)contact;

- (void)didEndContact:(nullable SKPhysicsContact *)contact;


@end
