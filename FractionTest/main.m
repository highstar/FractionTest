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
        Fraction *f2;
        
        [f1 setTo:2 over:5];
        f2 = [f1 copy];
        
        [f2 setTo:1 over:3];
        
        [f1 print];
        [f2 print];
    }
    
    return 0;
}
