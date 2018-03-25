//
//  main.m
//  homework2
//
//  Created by CScent on 18/3/19.
//  Copyright (c) 2018年 CScent. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"
#import "FractionMathOps.h"
#import "Calculator.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        //test Fraction
        
        Fraction * a = [[Fraction alloc]init];
        Fraction * b = [[Fraction alloc]init];
        Fraction * c = [[Fraction alloc]init];
//        Fraction *result;
        
//
        [a setTo: 1 over: 3];
        [b setTo: 2 over: 5];
        [c setTo: 2 over: 6];
         NSLog(@"a = ");
        [a print];
         NSLog(@"b = ");
        [b print];
         NSLog(@"c = ");
        [c print];
        
        NSLog(@"a isEqualTo:b = %i",[a isEqualTo:b]);
        NSLog(@"[a isEqualTo:c] = %i",[a isEqualTo:c]);
        NSLog(@"[b isEqualTo:c] = %i",[b isEqualTo:c]);
        NSLog(@"[a compare:b] = %i",[a compare:b]);
        NSLog(@"[a compare:c] = %i",[a compare:c]);
        NSLog(@"[b compare:c] = %i",[b compare:c]);
//
//        [a print];
//        NSLog(@" +");
//        [b print];
//        NSLog (@"-----");
//        result = [a add: b];
//        [result print];
//        result = [a mul: b];
//        [result print];
//        result = [a sub: b];
//        [result print];
//        result = [a div: b];
//        [result print];
        
//        test Calculator
        int choice;
        double value1,value2,value3;
        char operator;
        char buffer[8];
        
        Calculator *deskCalc = [[Calculator alloc]init];
        NSLog (@"Chose the calculator moudle");
        scanf("%i",&choice);
        if(choice == 1){
        NSLog (@"Type in your expression.");
        scanf ("%lf %c %lf %s %lf", &value1, &operator, &value2, buffer, &value3);
        [deskCalc setAccumulator: value1];
        if ( operator == '+' )
            [deskCalc add: value2];
        else if ( operator == '-' )
            [deskCalc subtract: value2];
        else if ( operator == '*' )
            [deskCalc multiply: value2];
        else if ( operator == '/' )
            [deskCalc divide: value2];
        
        NSLog (@"%.2f", [deskCalc accumulator]);
        }
        else if(choice == 2){
             NSLog (@"Type in your expression.");
            scanf("%s %lf",buffer,&value3);
            NSString *str = [NSString stringWithUTF8String:buffer];
            if([str isEqualToString:@"Sin"])
                NSLog(@"%.2f",[deskCalc Sin]);
            else if([str isEqualToString:@"Cos"] )
                NSLog(@"%.2f",[deskCalc Cos]);
            else if ([str isEqualToString:@"Tan"])
                NSLog(@"%.2f",[deskCalc Tan]);
        }
    }
    return 0;
}
