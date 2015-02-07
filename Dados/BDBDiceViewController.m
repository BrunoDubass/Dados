//
//  BDBDiceViewController.m
//  Dados
//
//  Created by Bruno Domínguez on 05/01/15.
//  Copyright (c) 2015 brunodominguez. All rights reserved.
//

#import "BDBDiceViewController.h"
#import "BDBDice.h"


@implementation BDBDiceViewController

static NSMutableArray* diceArray;


-(id)init{
    if (self = [super init]) {
        _diceL = nil;
        _diceR = nil;
        diceArray = [[NSMutableArray alloc]init];
        _dice = [[BDBDice alloc]init];
    }
    return self;
}

-(void)viewWillAppear:(BOOL)animated{
    
    [super viewWillAppear:animated];
    
}

+(NSInteger)diceArrayResultsCount{
    
    
    return [diceArray count];
}

+(NSMutableArray*)diceArrayResults{
    
    
    return diceArray;
}


- (IBAction)throwButton:(id)sender{
    
    
    
    [self.dice throwDices];
    
    [BDBDice addTrow];

    NSArray* dayThrow = [NSArray arrayWithObjects:[NSDate date], @([_dice unionResult]), nil];
    
    
    [diceArray addObject:dayThrow];
                                     
    NSLog(@"%@", dayThrow);
    NSLog(@"%@", diceArray);
    
    self.diceL.text = [NSString stringWithFormat:@"%i", self.dice.diceLResult];
    self.diceR.text = [NSString stringWithFormat:@"%i", self.dice.diceRResult];
    self.totalThrows.text = [NSString stringWithFormat:@"%d", [BDBDice totalThrows]];
    
    
    
    
}
- (IBAction)deleteThrows:(id)sender{
    
    [diceArray removeAllObjects];
    [BDBDice resetTotalThrows];
    self.diceL.text = [NSString stringWithFormat:@"%i", 0];
    self.diceR.text = [NSString stringWithFormat:@"%i", 0];
    self.totalThrows.text = [NSString stringWithFormat:@"%d", [BDBDice totalThrows]];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
