//
//  Complex.h
//  FractionTest
//
//  Created by Gao Xing on 2018/5/18.
//  Copyright © 2018年 Gao Xing. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Complex: NSObject

@property double real, imaginary;

- (void) print;
- (void) setReal: (double) a andImaginary: (double) b;
- (Complex *) add: (Complex *) f;

@end
