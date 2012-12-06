//
//  main.m
//  DNAhomework
//
//  Created by Ruslan Gafurov on 05.12.12.
//  Copyright (c) 2012 Ruslan Gafurov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Cell.h"


@interface Cell (mutator)
-(void)mutate:(int)n;
@end

@implementation Cell (mutator)

-(void)mutate:(int)n {
    
    NSMutableArray * myarray;
    myarray = [[NSMutableArray alloc] initWithObjects:nil];
    
    int randnum;
    int randdna;
    for (int i=0; i<n; i++)
    {
        randnum = [self getrandomfrom:1 to:100 wintout:myarray];
        [myarray addObject:[NSString stringWithFormat:@"%d", randnum]];
                
        randdna = [self getrandomfrom:1 to:4 without:[[self.dna objectAtIndex:randnum] intValue]];
        
        [self.dna insertObject:[self getdnabynumber:randdna] atIndex:1];
    }
             
}

@end


int main(int argc, const char * argv[])
{

    @autoreleasepool { 
        
        int x;
        Cell *mydna1, *mydna2;
        mydna1 = [[Cell alloc] init];
        mydna2 = [[Cell alloc] init];
        x = [mydna1 hammingDistance:mydna2];
        [mydna1 print:x];
        [mydna1 mutate:20];
        [mydna2 mutate:45];
         x = [mydna1 hammingDistance:mydna2];
        [mydna1 print:x];
    }
    return 0;
}

