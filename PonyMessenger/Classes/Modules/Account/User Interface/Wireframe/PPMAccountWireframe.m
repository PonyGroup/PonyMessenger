//
//  PPMAccountWireframe.m
//  PonyMessenger
//
//  Created by 崔 明辉 on 15/3/30.
//  Copyright (c) 2015年 崔 明辉. All rights reserved.
//

#import "PPMAccountWireframe.h"
#import "PPMAccountActiveSigninViewController.h"
#import "PPMAccountSigninViewController.h"
#import "PPMAccountSigninPresenter.h"
#import "PPMAccountSignupViewController.h"
#import "PPMAccountSignupPresenter.h"
#import "PPMApplication.h"

@implementation PPMAccountWireframe

- (void)presentActiveSigninViewControllerToWindow:(UIWindow *)window {
    PPMAccountActiveSigninViewController *activeSigninViewController = [self activeSigninViewController];
    [window setRootViewController:activeSigninViewController];
}

- (void)presentSigninViewControllerToWindow:(UIWindow *)window {
    PPMAccountSigninViewController *signinViewController = [self signinViewController];
    signinViewController.navigationItem.leftBarButtonItem = nil;
    UINavigationController *navigationController = [[[[PPMApplication sharedApplication] core] wireframe] standardNavigationController];
    [navigationController setViewControllers:@[signinViewController] animated:NO];
    [window setRootViewController:navigationController];
}

- (void)presentSigninViewControllerToViewController:(UIViewController *)viewController {
    PPMAccountSigninViewController *signinViewController = [self signinViewController];
    UINavigationController *navigationController = [[[[PPMApplication sharedApplication] core] wireframe] standardNavigationController];
    [navigationController setViewControllers:@[signinViewController] animated:NO];
    [viewController presentViewController:navigationController animated:YES completion:nil];
}

- (void)presentSignupViewControllerToNavigationController:(UINavigationController *)navigationController {
    [navigationController pushViewController:[self signupViewController] animated:YES];
}

#pragma mark - Getter

- (PPMAccountActiveSigninViewController *)activeSigninViewController {
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"PPMAccount" bundle:nil];
    return [storyBoard instantiateViewControllerWithIdentifier:@"PPMAccountActiveSigninViewController"];
}

- (PPMAccountSigninViewController *)signinViewController {
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"PPMAccount" bundle:nil];
    PPMAccountSigninViewController *viewController =
    [storyBoard instantiateViewControllerWithIdentifier:@"PPMAccountSigninViewController"];
    viewController.eventHandler = [[PPMAccountSigninPresenter alloc] init];
    viewController.eventHandler.userInterface = viewController;
    return viewController;
}

- (PPMAccountSignupViewController *)signupViewController {
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"PPMAccount" bundle:nil];
    PPMAccountSignupViewController *viewController =
    [storyBoard instantiateViewControllerWithIdentifier:@"PPMAccountSignupViewController"];
    viewController.eventHandler = [[PPMAccountSignupPresenter alloc] init];
    viewController.eventHandler.userInterface = viewController;
    return viewController;
}

@end
