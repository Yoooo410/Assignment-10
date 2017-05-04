//
//  StripePaymentService.h
//  Assignment#10
//
//  Created by yoshitokomiya on 2017-05-03.
//  Copyright © 2017 yoshitokomiya. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"

@interface StripePaymentService : NSObject <PaymentDelegate>

- (void) processPaymentAmount: (NSInteger) paymentAmount;
- (BOOL) canProcessPayment;

@end
