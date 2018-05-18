//
//  main.m
//  FractionTest
//
//  Created by Gao Xing on 2018/5/18.
//  Copyright © 2018年 Gao Xing. All rights reserved.
//

#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *myFraction = [[Fraction alloc] init];
        
        // set fraction to 1/3 using the dot operator
        
        myFraction.numerator = 1;
        myFraction.denominator = 3;
        
        // display the fraction
        
        NSLog(@"The value of myFaction is %i, and the denominator is %i", myFraction.numerator, myFraction.denominator);
    }
    
    return 0;
}
