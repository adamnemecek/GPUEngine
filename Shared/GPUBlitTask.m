//
//  GPUBlitTask.m
//  Noise Lab-Mac
//
//  Created by Brent Gulanowski on 2018-06-20.
//  Copyright © 2018 Lichen Labs. All rights reserved.
//

#import "GPUBlitTask.h"

@implementation GPUBlitTask

- (instancetype)initWithResource:(id<MTLResource>)resource {
    self = [self init];
    if (self) {
        _resource = resource;
    }
    return self;
}

- (void)encodeTaskWithCommandBuffer:(id<MTLCommandBuffer>)commandBuffer {
    id<MTLBlitCommandEncoder> encoder = [commandBuffer blitCommandEncoder];
    [self performBlitWithEncoder:encoder];
    [encoder endEncoding];
}

- (void)performBlitWithEncoder:(id<MTLBlitCommandEncoder>)encoder {}

@end
