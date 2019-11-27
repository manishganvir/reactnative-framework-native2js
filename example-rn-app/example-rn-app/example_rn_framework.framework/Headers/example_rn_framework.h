//
//  example_rn_framework.h
//  example-rn-framework
//
//  Created by Ganvir, Manish  on 11/20/19.
//

#import <Foundation/Foundation.h>

#import <UIKit/UIKit.h>
#import <React/RCTBridge.h>
#import <React/RCTAssert.h>

#import <React/RCTRootView.h>
//! Project version number for example_rn_framework.
FOUNDATION_EXPORT double example_rn_frameworkVersionNumber;

//! Project version string for example_rn_framework.
FOUNDATION_EXPORT const unsigned char example_rn_frameworkVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <example_rn_framework/PublicHeader.h>

@interface example_rn_framework : NSObject
-(NSString*) doSomethingAPI;
@end
