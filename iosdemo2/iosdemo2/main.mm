//
//  main.m
//  iosdemo2
//
//  Created by chenyi on 2024/4/10.
//

//#import <UIKit/UIKit.h>
//#import "AppDelegate.h"
//
//int main(int argc, char * argv[]) {
//    NSString * appDelegateClassName;
//    @autoreleasepool {
//        // Setup code that might create autoreleased objects goes here.
//        appDelegateClassName = NSStringFromClass([AppDelegate class]);
//    }
//    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
//}

#include <iostream>

#include "platform/BasePlatform.h"
#include "AppDelegate.h"

int main(int argc, const char * argv[]) {
    cc::BasePlatform* platform = cc::BasePlatform::getPlatform();
    if (platform->init()) {
        return -1;
    }
    platform->run(argc, argv);
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    int retVal = UIApplicationMain(argc, (char**)argv, nil, @"AppDelegate");
    [pool release];
    return retVal;
}

