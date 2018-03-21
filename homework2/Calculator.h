//
//  Calculator.h
//  
//
//  Created by CScent on 18/3/19.
//
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject

-(void) setAccumulator: (double) value;
-(void) clear;
-(double) accumulator;
-(void) add: (double) value;
-(void) subtract: (double) value;
-(void) multiply: (double) value;
-(void) divide: (double) value;

@end

@interface Calculator (Trig)

-(double) Sin;
-(double) Cos;
-(double) Tan;

@end