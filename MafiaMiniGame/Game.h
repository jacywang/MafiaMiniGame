//
//  Game.h
//  MafiaMiniGame
//
//  Created by JIAN WANG on 5/18/15.
//  Copyright (c) 2015 JWANG. All rights reserved.
//

#import "Player.h"

@interface Game : NSObject

@property (strong, nonatomic) Player *mafia;
@property (strong, nonatomic) Player *sheriff;
@property (assign, nonatomic) int answer;

-(NSString *)randomMathQuestion;

@end
