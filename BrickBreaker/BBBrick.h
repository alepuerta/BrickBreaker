//
//  BBBrick.h
//  BrickBreaker
//
//  Created by Alejandro on 18/6/15.
//  Copyright (c) 2015 Alejandro. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

typedef enum : NSUInteger {
    Green = 1,
    Blue = 2,
    Grey = 3,
    Yellow = 4,
} BrickType;

static const uint32_t kBrickCategory = 0x1 << 2;


@interface BBBrick : SKSpriteNode

@property (nonatomic) BrickType type;
@property (nonatomic) BOOL indestructible;
@property (nonatomic) BOOL spawnsExtraBall;

-(instancetype)initWithType:(BrickType)type;
-(void)hit;

@end
