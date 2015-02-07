//
//  BDBDiceViewController.h
//  Dados
//
//  Created by Bruno Domínguez on 05/01/15.
//  Copyright (c) 2015 brunodominguez. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BDBDice;

@interface BDBDiceViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *diceR;
@property (weak, nonatomic) IBOutlet UILabel *diceL;
@property (weak, nonatomic) IBOutlet UILabel *totalThrows;
//@property (strong, nonatomic) NSMutableArray* diceArray;
@property (strong, nonatomic) BDBDice* dice;

+(NSInteger)diceArrayResultsCount;
+(NSMutableArray*)diceArrayResults;

- (IBAction)throwButton:(id)sender;
- (IBAction)deleteThrows:(id)sender;

@end
