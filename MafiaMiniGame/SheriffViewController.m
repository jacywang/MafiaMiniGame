//
//  SheriffViewController.m
//  MafiaMiniGame
//
//  Created by JIAN WANG on 5/18/15.
//  Copyright (c) 2015 JWANG. All rights reserved.
//

#import "SheriffViewController.h"
#import "Game.h"
#import "PlayGameViewController.h"

@interface SheriffViewController ()

@property (weak, nonatomic) IBOutlet UILabel *sLivesLabel;
@property (weak, nonatomic) IBOutlet UILabel *mLivesLabel;
@property (strong, nonatomic) Game *game;

@end

@implementation SheriffViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.game = [[Game alloc] init];
    self.sLivesLabel.text = [NSString stringWithFormat:@"%d",self.game.sheriff.numberOfLives];
    self.mLivesLabel.text = [NSString stringWithFormat:@"%d", self.game.mafia.numberOfLives];
}

-(void)viewWillAppear:(BOOL)animated {
    self.sLivesLabel.text = [NSString stringWithFormat:@"%d",self.game.sheriff.numberOfLives];
    self.mLivesLabel.text = [NSString stringWithFormat:@"%d", self.game.mafia.numberOfLives];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"playGame"]) {
        PlayGameViewController *pgVC = segue.destinationViewController;
        pgVC.game = self.game;
        pgVC.delegate = self;
    }
}

-(void)gameResult:(BOOL)result {
    if (result) {
        self.game.mafia.numberOfLives--;
    } else {
        self.game.sheriff.numberOfLives--;
    }
    
    [self gameOver];
}

-(void)gameOver {
    NSString *message;
    if (self.game.mafia.numberOfLives == 0) {
        message = @"You won the game! Good job!";
    } else if (self.game.sheriff.numberOfLives == 0) {
        message = @"You were killed by the Mafia. You lost!";
    }
    
    if (self.game.mafia.numberOfLives == 0 || self.game.sheriff.numberOfLives == 0) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Game Over" message:message delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert show];
    }
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
