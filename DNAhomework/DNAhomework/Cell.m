//
//  Cell.m
//  DNAhomework
//
//  Created by Ruslan Gafurov on 05.12.12.
//  Copyright (c) 2012 Ruslan Gafurov. All rights reserved.
//

#import "Cell.h"

@implementation Cell

+(int)myrandom:(int)startX fromrange:(int)stopX{
    
    srandom((unsigned)(mach_absolute_time() & 0xFFFFFFFF));
    int result = startX + (random() % (stopX-startX));
    return result;
}


-(id) init  {
    self = [super init];
    if (self)
    {
       
        [self setDna:[[NSMutableArray alloc] initWithCapacity:100]];
//        _dna = [[NSMutableArray alloc] initWithCapacity:100];
        
        NSString *dnakey;
        
        int y;
        
        for (int i=0; i<100; i++) {
            
            y = [Cell myrandom:1 fromrange:4];

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
            
            [self.dna addObject:(dnakey)];
        }
    }

    return self;
}

-(int)hammingDistance:(Cell *)f {
    
    int x = 0;
    for (int i=0; i<100; i++)
    {
        if ([self.dna objectAtIndex:i] == [f.dna objectAtIndex:i])
        {
            x++;
        }
    }
    return x;
}

-(void)print:(int)n{
    NSLog(@"%i", n);
}



@end
