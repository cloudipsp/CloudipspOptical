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
    scanViewController.collectCVV = NO;
    scanViewController.collectExpiry = NO;
    scanViewController.suppressScanConfirmation = YES;
    scanViewController.suppressScannedCardImage = YES;
    scanViewController.hideCardIOLogo = YES;
    [viewController presentViewController:scanViewController animated:YES completion:nil];
}

#pragma mark - CardIOPaymentViewControllerDelegate

- (void)userDidCancelPaymentViewController:(CardIOPaymentViewController *)paymentViewController
{
    [paymentViewController dismissViewControllerAnimated:YES completion:nil];
}

- (void)userDidProvideCreditCardInfo:(CardIOCreditCardInfo *)cardInfo inPaymentViewController:(CardIOPaymentViewController *)paymentViewController
{
    self.cardInputView.cardNumberTextField.text = cardInfo.cardNumber;
    [paymentViewController dismissViewControllerAnimated:YES completion:nil];
}

@end
