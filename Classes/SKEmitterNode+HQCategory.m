//
//  SKEmitterNode+HQCategory.m
//  BowmastersDemo
//
//  Created by 刘欢庆 on 2017/9/22.
//  Copyright © 2017年 刘欢庆. All rights reserved.
//

#import "SKEmitterNode+HQCategory.h"

@implementation SKEmitterNode (HQCategory)
- (void)setParticleColorSequenceColors:(NSArray *)colors
{
    NSMutableArray *times = [NSMutableArray arrayWithCapacity:colors.count];
    NSInteger count = (colors.count- 2 + 1);
    CGFloat time = 1 / count;
    
    [times addObject:@(0)];
    for (int i = 1; i < count; i++)
    {
        [times addObject:@(i * time)];
    }
    [times addObject:@(1)];
    
    self.particleColorSequence = [[SKKeyframeSequence alloc] initWithKeyframeValues:colors times:times];
}
@end
