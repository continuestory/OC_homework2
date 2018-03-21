//
//  Calculator.m
//  
//
//  Created by CScent on 18/3/19.
//
//

#import "Calculator.h"

@implementation Calculator{
    double accumulator;
}
-(void) setAccumulator: (double) value {
    accumulator = value;
}
-(void) clear {
    accumulator = 0;
}
-(double) accumulator {
    return accumulator;
}
-(void) add: (double) value {
    accumulator += value;
}
-(void) subtract: (double) value {
    accumulator -= value;
}
-(void) multiply: (double) value {
    accumulator *= value;
}
-(void) divide: (double) value {
    accumulator /= value;
}


@end

@implementation Calculator (Trig)

-(double) Sin{
    return sin(accumulator);
}
-(double) Cos{
    return cos(accumulator);
}
-(double) Tan{
    return tan(accumulator);
}


@end