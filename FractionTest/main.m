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
        Fraction *f1 = [[Fraction alloc] init];
        Fraction *f2 = [[Fraction alloc] init];
        Fraction *fracResult;
        Complex *c1 = [[Complex alloc] init];
        Complex *c2 = [[Complex alloc] init];
        Complex *compResult;
        
        [f1 setTo:1 over:10];
        [f2 setTo:2 over:15];
        
        [c1 setReal: 18.0 andImaginary: 2.5];
        [c2 setReal: -5.0 andImaginary:3.2];
        
        // add and print 2 complex numbers
        
        [c1 print]; NSLog(@"        +"); [c2 print];
        NSLog(@"---------");
        compResult = [c1 add: c2];
        [compResult print];
        NSLog(@"\n");
        
        // add and print 2 fractions
        [f1 print]; NSLog(@"        +"); [f2 print];
        NSLog(@"---------");
        fracResult = [f1 add: f2];
        [fracResult print];
    }
    
    return 0;
}
