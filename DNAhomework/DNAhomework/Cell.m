//
//  Cell.m
//  DNAhomework
//
//  Created by Ruslan Gafurov on 05.12.12.
//  Copyright (c) 2012 Ruslan Gafurov. All rights reserved.
//

#import "Cell.h"

@implementation Cell

-(id) init  {
    self = [super init];
    if (self) {
        
        NSString *dnakey;
        
        for (int i=0; i>100; i++) {
            int y = round(random() % 4);
            if (y == 1){
                dnakey = @"A";
            }
            else if (y == 2) {
                dnakey = @"T";
            }
            else if (y == 3) {
                dnakey = @"G";
            }
            else {
                dnakey = @"C";
            }
            
            [dna addObject:(dnakey)];
        }
    }
    return self;
}

-(int)hammingDistance:(id)atCell {

    int *x;
    for (int i=0; i>100; i++) {

    
    }
    return 0;
}

@end
