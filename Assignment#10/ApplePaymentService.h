//
//  ApplePaymentService.h
//  Assignment#10
//
//  Created by yoshitokomiya on 2017-05-04.
//  Copyright © 2017 yoshitokomiya. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"

@interface ApplePaymentService : NSObject <PaymentDelegate>

- (void) processPaymentAmount: (NSInteger) paymentAmount;
- (BOOL) canProcessPayment;

@end
