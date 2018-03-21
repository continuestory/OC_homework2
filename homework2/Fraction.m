//
//  Fraction.m
//  
//
//  Created by CScent on 18/3/19.
//
//

#import "Fraction.h"

@implementation Fraction
@synthesize numerator,denominator;
-(void) print{
    NSLog(@"%i/%i",numerator,denominator);
}
-(double) convertToNum{
    if(denominator != 0){
        return (double) numerator/denominator;
    }
    else{
        return NAN;
    }
}
-(void) setTo:(int)n over:(int)d{
    numerator = n;
    denominator = d;
}


-(void) reduce{
    int u = numerator;
    int v = denominator;
    int temp;
    while(v != 0){
        temp = u % v;
        u = v;
        v =temp;
    }
    
    numerator /= u;
    denominator /= u;
}
@end

@implementation Fraction (Comparison)

-(BOOL) isEqualTo:(Fraction *)f{
    [self reduce];
    [f reduce];
    if(self == f)
        return 1;
    else
        return 0;
    
}

-(int) compare:(Fraction *)f{
    [self reduce];
    [f reduce];
    if(self >f)
        return 1;
    else if (self <f)
        return -1;
    else
        return 0;
}

@end

