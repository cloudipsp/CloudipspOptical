//
//  PSOpticalBridge.m
//  CloudipspOptical
//
//  Created by Nadiia Dovbysh on 2/28/17.
//
//

#import "PSOpticalBridge.h"
#import <CardIO.h>

@interface PSOpticalBridge() <CardIOPaymentViewControllerDelegate>

@property (nonatomic, weak) PSCardInputView *cardInputView;

@end

@implementation PSOpticalBridge

- (void)startScan:(UIViewController *)viewController aCardInputView:(PSCardInputView *)cardInputView {
    self.cardInputView = cardInputView;
    CardIOPaymentViewController *scanViewController = [[CardIOPaymentViewController alloc] initWithPaymentDelegate:self];
    [viewController presentViewController:scanViewController animated:YES completion:nil];
}

#pragma mark - CardIOPaymentViewControllerDelegate

- (void)userDidCancelPaymentViewController:(CardIOPaymentViewController *)paymentViewController
{
    [paymentViewController dismissViewControllerAnimated:YES completion:nil];
}

- (void)userDidProvideCreditCardInfo:(CardIOCreditCardInfo *)cardInfo inPaymentViewController:(CardIOPaymentViewController *)paymentViewController
{
    self.cardInputView.cardNumberTextField.text = cardInfo.redactedCardNumber;
    self.cardInputView.expMonthTextField.text = [NSString stringWithFormat:@"%lu", (unsigned long)cardInfo.expiryMonth];
    self.cardInputView.expYearTextField.text = [NSString stringWithFormat:@"%lu", (unsigned long)cardInfo.expiryYear];
    self.cardInputView.cvvTextField.text = cardInfo.cvv;
    
    [paymentViewController dismissViewControllerAnimated:YES completion:nil];
}

@end
