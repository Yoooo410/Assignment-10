//
//  AmazonPaymentService.m
//  Assignment#10
//
//  Created by yoshitokomiya on 2017-05-03.
//  Copyright © 2017 yoshitokomiya. All rights reserved.
//

#import "AmazonPaymentService.h"

@implementation AmazonPaymentService

- (void) processPaymentAmount: (NSInteger) paymentAmount{
    
    NSLog(@"Amazon processed amount $%ld", paymentAmount);
}

- (BOOL) canProcessPayment{
    
    NSInteger rand = arc4random_uniform(2);
    
    if (rand == 0) {
        NSLog(@"Sorry,you can't do the payment...");
        return NO;
    }
    else  {
        return YES;
    }
}

@end
