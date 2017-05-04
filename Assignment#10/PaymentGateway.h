//
//  PaymentGateway.h
//  Assignment#10
//
//  Created by yoshitokomiya on 2017-05-03.
//  Copyright © 2017 yoshitokomiya. All rights reserved.
//
#import <Foundation/Foundation.h>

@class PaymentGateway;

@protocol PaymentDelegate <NSObject>

- (void) processPaymentAmount: (NSInteger) paymentAmount;
- (BOOL) canProcessPayment;

@end



@interface PaymentGateway : NSObject

@property (nonatomic, weak) id<PaymentDelegate> paymentDelegate;


@end
