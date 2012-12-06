//
//  Cell.m
//  DNAhomework
//
//  Created by Ruslan Gafurov on 05.12.12.
//  Copyright (c) 2012 Ruslan Gafurov. All rights reserved.
//

#import "Cell.h"

@implementation Cell

-(int)myrandom:(int)startX fromrange:(int)stopX{
    
    srandom((unsigned)(mach_absolute_time() & 0xFFFFFFFF));
    int result = startX + (random() % (stopX-startX));
    return result;
}


-(id) init  {
    self = [super init];
    if (self)
    {
       
        [self setDna:[[NSMutableArray alloc] initWithCapacity:100]];
        
        NSString *dnakey;
        
        int y;
        
        for (int i=0; i<100; i++) {
            
            y = [self myrandom:1 fromrange:4];
            
            dnakey = [self getdnabynumber:y];
            
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

-(int)getrandomfrom:(int)x to:(int)y wintout:(NSMutableArray *)array{
    
    int r = [self myrandom:x fromrange:y];
    
    if ([array containsObject:[NSString stringWithFormat:@"%d", r]])
    {
        r = [self getrandomfrom:x to:y wintout:array];
    }
    return r;
}

-(NSString*)getdnabynumber:(int)n{

    NSString*result = @"";
    
    if (n == 1){
        result = @"A";
    }
    else if (n == 2) {
        result = @"T";
    }
    else if (n == 3) {
        result = @"G";
    }
    else {
        result = @"C";
    }
    return result;
}

-(int)getnumberbydna:(NSString *)olddna{

    int result=0;
    
    if (olddna == @"A"){
        result = 1;
    }
    else if (olddna == @"T") {
        result = 2;
    }
    else if (olddna == @"G") {
        result = 3;
    }
    else {
        result = 4;
    }
    return result;
}

-(int)getrandomfrom:(int)x to:(int)y without:(int) olddna{
    
    
    int r = [self myrandom:x fromrange:y];
    
    while (olddna == r) {
        r =  [self myrandom:x fromrange:y];
    }    return r;
    
    return r;
}


@end
