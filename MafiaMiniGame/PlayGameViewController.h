//
//  PlayGameViewController.h
//  MafiaMiniGame
//
//  Created by JIAN WANG on 5/18/15.
//  Copyright (c) 2015 JWANG. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Game;

@protocol gameResult <NSObject>

-(void)gameResult:(BOOL)result;

@end

@interface PlayGameViewController : UIViewController

@property (strong, nonatomic) Game *game;
@property (strong, nonatomic) id<gameResult> delegate;

@end
