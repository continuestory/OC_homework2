//
//  Fraction.h
//  
//
//  Created by CScent on 18/3/19.
//
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject
@property int numerator,denominator;

-(void) print;
-(void) setTo: (int) n over: (int) d;
-(double) convertToNum;
//-(void) add: (Fraction *)f;
-(void) reduce;

@end

@interface Fraction (Comparison)
-(BOOL) isEqualTo: (Fraction *)f;
-(int) compare: (Fraction *) f;

@end

