//
//  main.m
//  FractionTest
//
//  Created by Gao Xing on 2018/5/18.
//  Copyright © 2018年 Gao Xing. All rights reserved.
//

#import "Fraction.h"
#import "Complex.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *a, *b, *c;
        
        NSLog(@"Fractions allocated: %i", [Fraction count]);
        
        a = [[Fraction allocF] init];
        b = [[Fraction allocF] init];
        c = [[Fraction allocF] init];
        
        NSLog(@"Fractions allocated: %i", [Fraction count]);
    }
    
    return 0;
}
