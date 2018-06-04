//
//  Fraction.h
//  FractionTest
//
//  Created by Gao Xing on 2018/5/18.
//  Copyright © 2018年 Gao Xing. All rights reserved.
//

#import <Foundation/Foundation.h>

// The Fraction class

@interface Fraction : NSObject <NSCopying>

@property int numerator, denominator;

- (void) print;
- (void) setTo: (int) n over: (int) d;
- (double) convertToNum;
- (Fraction *) add: (Fraction *) f;
- (void) reduce;
- (instancetype) initWith: (int) n over: (int) d;
+ (Fraction *) allocF;
+ (int) count;
- (NSString *) description;
@end
