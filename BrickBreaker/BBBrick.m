//
//  BBBrick.m
//  BrickBreaker
//
//  Created by Alejandro on 18/6/15.
//  Copyright (c) 2015 Alejandro. All rights reserved.
//

#import "BBBrick.h"

@implementation BBBrick

-(instancetype)initWithType:(BrickType)type
{
    switch (type) {
        case Green:
            self = [super initWithImageNamed:@"BrickGreen"];
            break;
        
        case Blue:
            self = [super initWithImageNamed:@"BrickBlue"];
            break;
            
        case Grey:
            self = [super initWithImageNamed:@"BrickGrey"];
            break;
            
        default:
            self = nil;
            break;
    }
    
    if (self) {
        self.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:self.size];
        self.physicsBody.categoryBitMask = kBrickCategory;
        self.physicsBody.dynamic = NO;
        self.type = type;
        self.indestructible = (type == Grey);        
    }
    
    return self;
}

-(void)hit
{
    switch (self.type) {
        case Green:
            [self runAction:[SKAction removeFromParent]];
            break;
            
        case Blue:
            self.texture = [SKTexture textureWithImageNamed:@"BrickGreen"];
            self.type = Green;
            break;
            
        default:
            // Grey bricks are indestructible.
            break;
    }
}


@end
