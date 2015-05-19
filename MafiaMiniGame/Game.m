//
//  Game.m
//  MafiaMiniGame
//
//  Created by JIAN WANG on 5/18/15.
//  Copyright (c) 2015 JWANG. All rights reserved.
//

#import "Game.h"
#import "Player.h"

@implementation Game

-(instancetype)init {
    self = [super self];
    if (self) {
        _mafia = [[Player alloc] init];
        _sheriff = [[Player alloc] init];
    }
    return self;
}

-(NSString *)randomMathQuestion {
    int a = arc4random_uniform(10);
    int b = arc4random_uniform(10);
    self.answer = a + b;
    return [NSString stringWithFormat:@"What's %d + %d?", a, b];
}

@end
