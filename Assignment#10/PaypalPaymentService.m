//
//  PaypalPaymentService.m
//  Assignment#10
//
//  Created by yoshitokomiya on 2017-05-03.
//  Copyright © 2017 yoshitokomiya. All rights reserved.
//

#import "PaypalPaymentService.h"

@implementation PaypalPaymentService

- (void) processPaymentAmount: (NSInteger) paymentAmount{
    
    NSLog(@"Paypal processed amount $%ld", paymentAmount);
}

- (BOOL) canProcessPayment{
    
    NSInteger rand = arc4random_uniform(2);
    if (rand == 0) {
        return NO;
    }
    else {
        return YES;
    }
}


@end
