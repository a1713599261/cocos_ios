//
//  AppDelegate.h
//  iosdemo2
//
//  Created by chenyi on 2024/4/10.
//

#import <UIKit/UIKit.h>

#import "platform/ios/AppDelegateBridge.h"
#import <UIKit/UIKit.h>

@class ViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property(nonatomic, readonly) ViewController *viewController;
@property(nonatomic, readonly) AppDelegateBridge *appDelegateBridge;
@end

