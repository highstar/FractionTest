//
//  Fraction.m
//  FractionTest
//
//  Created by Gao Xing on 2018/5/18.
//  Copyright © 2018年 Gao Xing. All rights reserved.
//

#import "Fraction.h"

static int gCounter;

@implementation Fraction

+ (Fraction *) allocF {
    extern int gCounter;
    ++gCounter;
    
    return [Fraction alloc];
}

+ (int) count {
    extern int gCounter;
    
    return gCounter;
}

@synthesize numerator, denominator;

- (void) print {
    NSLog (@"%i/%i", numerator, denominator);
}

- (double) convertToNum {
    if (denominator != 0)
        return (double) numerator / denominator;
    else
        return NAN;
}

- (void) setTo: (int) n over: (int) d {
    numerator = n;
    denominator = d;
}

// add a Fraction to the receiver

- (Fraction *) add: (Fraction *) f {
    // To add two fractions:
    // a/b + c/d = ((a * d) + (b * c) / (b * d)
    
    // result will store the result of the addition
    Fraction *result = [[Fraction alloc] init];
    
    result.numerator = numerator * f.denominator + denominator * f.numerator;
    result.denominator = denominator * f.denominator;
    
    [result reduce];
    
    return result;
}

- (void) reduce {
    int u = numerator;
    int v = denominator;
    int temp;
    
    while (v != 0) {
        temp = u % v;
        u = v;
        v = temp;
    }
    
    numerator /= u;
    denominator /= u;
}

- (instancetype) initWith: (int) n over: (int) d {
    self = [super init];
    
    if (self)
        [self setTo: n over: d];
    
    return self;
}

- (instancetype) init {
    return [self initWith: 0 over: 0];
}

- (NSString *) description {
    return [NSString stringWithFormat: @"%i/%i", numerator, denominator];
}

- (id) copyWithZone:(NSZone *)zone {
    Fraction *newFract = [[Fraction allocWithZone:zone] init];
    
    [newFract setTo:numerator over:denominator];
    return newFract;
}

@end
