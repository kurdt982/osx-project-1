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
    -(void)mutator:(int)n;
@end

@implementation Cell (mutator)

-(void)mutator:(int)n{

    NSMutableArray * myarray;
    myarray = [[NSMutableArray alloc] initWithObjects:nil];
    
    int randnum;
    for (int i=0; i<n; i++)
    {
        randnum = [Cell myrandom:1 fromrange:100];

        if ([myarray containsObject:[NSString stringWithFormat:@"%d", randnum]]){
            
            
            
            
        }
        else{
            [myarray addObject:[NSString stringWithFormat:@"%d", randnum]];
        }

        
    }
    
    
             
}

@end


int main(int argc, const char * argv[])
{

    @autoreleasepool { 
        
        Cell *mydna1, *mydna2;
        mydna1 = [[Cell alloc] init];
        mydna2 = [[Cell alloc] init];
        int x = [mydna1 hammingDistance:mydna2];
//        NSLog(@"%@", mydna1.dna);
//        NSLog(@"%@", mydna2.dna);
        [mydna1 print:x];
    }
    return 0;
}

