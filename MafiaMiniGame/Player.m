//
//  Player.m
//  MafiaMiniGame
//
//  Created by JIAN WANG on 5/18/15.
//  Copyright (c) 2015 JWANG. All rights reserved.
//

#import "Player.h"

@implementation Player

-(instancetype)init{
    self = [super self];
    if (self) {
        _numberOfLives = 5;
    }
    return self;
}

@end
