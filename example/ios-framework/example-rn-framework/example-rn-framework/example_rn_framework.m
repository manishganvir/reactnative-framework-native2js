//
//  example_rn_framework.m
//  example-rn-framework
//
//  Created by Ganvir, Manish on 11/20/19.
//

#import <Foundation/Foundation.h>
#import "example_rn_framework.h"

#import <React/RCTBridge.h>
#import <React/RCTBundleURLProvider.h>
#import <React/RCTRootView.h>
#import <React/RCTLog.h>

@interface example_rn_framework () {
    RCTBridge *bridge;
}



-(NSString*)doSomethingAPI;

@end

@implementation example_rn_framework

-(NSString*) doSomethingAPI{

    // To enable console logs
    RCTSetLogThreshold(RCTLogLevelInfo - 1);

    // Load the bundle
    NSURL * url = [[NSBundle bundleForClass:[example_rn_framework class]] URLForResource:@"main" withExtension:@"jsbundle"];
    
    // Call-back to check if the JS is loaded
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(javaScriptDidLoad) name:RCTJavaScriptDidLoadNotification object:nil];

    bridge = [[RCTBridge alloc] initWithBundleURL:url moduleProvider:nil launchOptions:nil];
    
    return @"something";
}

- (void)javaScriptDidLoad {
    NSLog(@"js  loaded");
    [bridge enqueueJSCall:@"someapiModule" method:@"hello" args:nil completion:^{
      NSLog(@"API call finished");
    }];
}
@end

