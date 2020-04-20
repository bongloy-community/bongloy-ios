//
//  BongloyAPIClient.h
//  Bongloy
//
//  Created by khomsovon on 4/20/20.
//

#import <Stripe/Stripe.h>

@interface BongloyAPIClient : STPAPIClient

@property (nonatomic, strong, readwrite) NSURL *apiURL;
@property (nonatomic, strong, readonly) NSURLSession *urlSession;
@property (nonatomic, strong, readwrite) NSString *apiKey;

- (instancetype)initWithConfiguration:(STPPaymentConfiguration *)configuration NS_DESIGNATED_INITIALIZER;

@end
