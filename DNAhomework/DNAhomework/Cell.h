//
//  Cell.h
//  DNAhomework
//
//  Created by Ruslan Gafurov on 05.12.12.
//  Copyright (c) 2012 Ruslan Gafurov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Cell : NSObject

@property NSMutableArray *dna;

-(void)print:(int) n;
-(int)hammingDistance:(Cell *) f;
+(int)myrandom:(int)startX fromrange:(int)stopX;

@end
