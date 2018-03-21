//
//  FractionMathOps.h
//  
//
//  Created by CScent on 18/3/19.
//
//

#import <Foundation/Foundation.h>
#import "Fraction.h"
@interface Fraction (MathOps)
-(Fraction *) add: (Fraction *)f;
-(Fraction *) mul: (Fraction *)f;
-(Fraction *) sub: (Fraction *)f;
-(Fraction *) div: (Fraction *)f;
@end

