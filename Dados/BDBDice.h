//
//  BDBDice.h
//  Dados
//
//  Created by Bruno Domínguez on 05/01/15.
//  Copyright (c) 2015 brunodominguez. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BDBDice : NSObject

@property (nonatomic) int diceRResult;
@property (nonatomic) int diceLResult;
@property (nonatomic) int unionResult;

+(void)addTrow;
+(void)resetTotalThrows;
+(int)totalThrows;
-(void)throwDices;
-(void)deleteThrows;

@end
