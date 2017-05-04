//
//  PaymentGateway.m
//  Assignment#10
//
//  Created by yoshitokomiya on 2017-05-03.
//  Copyright © 2017 yoshitokomiya. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway

- (void) processPaymentAmount: (NSInteger)amount{

   [self.paymentDelegate processPaymentAmount:amount];
}

- (BOOL) canProcessPayment{
   return [self.paymentDelegate canProcessPayment];
}


@end
