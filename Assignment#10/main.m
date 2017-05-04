//
//  main.m
//  Assignment#10
//
//  Created by yoshitokomiya on 2017-05-03.
//  Copyright © 2017 yoshitokomiya. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"
#import "PaypalPaymentService.h"
#import "StripePaymentService.h"
#import "AmazonPaymentService.h"
#import "ApplePaymentService.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        //make random number
        NSInteger rand = arc4random_uniform(901) + 100;
        
        NSLog(@"Thank you for shopping at Acme.com.");
        NSLog(@"Your total today is $%ld", rand);
        NSLog(@"Please select your payment method:");
        NSLog(@"1: Paypal, 2: Stripe, 3: Amazon, 4: Apple");
        
        //input user's command
        char inputUser[255];
        fgets(inputUser, 255, stdin);
        NSString *inputUserString = [NSString stringWithCString:inputUser encoding:NSUTF8StringEncoding];
        inputUserString = [inputUserString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        
        NSLog(@"input %@", inputUserString);
        
        //change the value of the input to Integer value
        NSInteger inputUserInt = [inputUserString intValue];
        
        //pass the generated dollar value to processPaymentAmount method
        PaymentGateway *pg = [PaymentGateway new];
        PaypalPaymentService *pps = [PaypalPaymentService new];
        StripePaymentService *sts = [StripePaymentService new];
        AmazonPaymentService *ams = [AmazonPaymentService new];
        ApplePaymentService *aps = [ApplePaymentService new];
        
        
        switch (inputUserInt) {
            case 1:
                pg.paymentDelegate = pps;
                if ([pps canProcessPayment] == YES) {
                    [pps processPaymentAmount:rand];
                    break;
                }
                else if ([pps canProcessPayment] == NO){
                    break;
                }
                
            case 2:
                pg.paymentDelegate = sts;
                [sts canProcessPayment];
                [sts processPaymentAmount:rand];
                break;
                
            case 3:
                pg.paymentDelegate = ams;
                [ams canProcessPayment];
                [ams processPaymentAmount:rand];
                break;
                
            case 4:
                pg.paymentDelegate = aps;
                [aps canProcessPayment];
                [aps processPaymentAmount:rand];
                break;
                
            default:
                break;
        }
        
        
    }
    return 0;
}
