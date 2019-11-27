//
//  ViewController.m
//  example-rn-app
//
//  Created by Ganvir, Manish  on 11/25/19.
//

#import "ViewController.h"
#import "example_rn_framework/example_rn_framework.h"

@interface ViewController ()

@end

@implementation ViewController
{
    example_rn_framework *framework;

}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    framework = [[example_rn_framework alloc ]init];
    // Do any additional setup after loading the view.
    NSLog(@"Call framework API %@", [framework doSomethingAPI]);
}


@end
