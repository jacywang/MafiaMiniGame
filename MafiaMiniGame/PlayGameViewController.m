//
//  PlayGameViewController.m
//  MafiaMiniGame
//
//  Created by JIAN WANG on 5/18/15.
//  Copyright (c) 2015 JWANG. All rights reserved.
//

#import "PlayGameViewController.h"
#import "Game.h"

@interface PlayGameViewController ()

@property (weak, nonatomic) IBOutlet UILabel *questionLabel;
@property (weak, nonatomic) IBOutlet UITextField *answerTextField;

@end

@implementation PlayGameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.questionLabel.text = [self.game randomMathQuestion];
}

- (IBAction)submitButtonPressed:(UIButton *)sender {
    [self.answerTextField resignFirstResponder];
    int playerAnswer = (int)[self.answerTextField.text integerValue];
    [self.delegate gameResult:playerAnswer == self.game.answer];
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
