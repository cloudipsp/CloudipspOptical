//
//  PSOpticalBridge.h
//  CloudipspOptical
//
//  Created by Nadiia Dovbysh on 2/28/17.
//
//

#import <Foundation/Foundation.h>
#import <Cloudipsp/PSCloudipsp.h>

@interface PSOpticalBridge : NSObject

- (void)startScan:(UIViewController *)viewController aCardInputView:(PSCardInputView *)cardInputView;

@end
