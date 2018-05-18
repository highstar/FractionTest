//
//  Fraction.h
//  FractionTest
//
//  Created by Gao Xing on 2018/5/18.
//  Copyright © 2018年 Gao Xing. All rights reserved.
//

#import <Foundation/Foundation.h>

// The Fraction class

@interface Fraction : NSObject

@property int numerator, denominator;

- (void) print;
- (void) setTo: (int) n over: (int) d;
- (double) convertToNum;
- (void) add: (Fraction *) f;
- (void) reduce;

@end
