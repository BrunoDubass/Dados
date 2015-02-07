//
//  BDBDice.m
//  Dados
//
//  Created by Bruno Domínguez on 05/01/15.
//  Copyright (c) 2015 brunodominguez. All rights reserved.
//

#import "BDBDice.h"

@implementation BDBDice

static int totalTrows;

+(void)addTrow{
    
    totalTrows+=1;
    
}

+(void)resetTotalThrows{
    
    totalTrows = 0;
}

+(int)totalThrows{
    
    return totalTrows;

}

-(void)throwDices{
    
    int L = arc4random()%10;
    int R = arc4random()%10;
    self.diceLResult = L;
    self.diceRResult = R;
    
    self.unionResult = R + (L*10);
    
    
    
}

-(void)deleteThrows{
    
    totalTrows = 0;
    
}

@end
