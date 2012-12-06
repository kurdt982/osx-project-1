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

-(NSString*)getdnabynumber:(int)n;

-(int)getnumberbydna:(NSString*) olddna;
-(int)myrandom:(int)startX fromrange:(int)stopX;

-(int)getrandomfrom:(int)x to:(int)y wintout:(NSMutableArray*) array;
-(int)getrandomfrom:(int)x to:(int)y without:(int) olddna;

@end
