//
//  AppDelegate.m
//  PalindromeFInder.
//
//  Created by Christopher Webb-Orenstein on 6/11/16.
//  Copyright © 2016 Christopher Webb-Orenstein. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [self isPalindrome:@"Dagon"];
    return YES;
}

-(BOOL)isPalindrome:(NSString *)string {
    BOOL yesNo = NO;
    NSString *result = @"";
        for (NSUInteger i = [string length]; i > 0; i--) {
            unichar character = [[string lowercaseString]characterAtIndex:i-1];
            result = [result stringByAppendingFormat:@"%c", character];
            if ([string isEqualToString:result]) {
                yesNo = YES;
            }
        }
    return yesNo;
}

@end
