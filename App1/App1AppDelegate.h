//
//  App1AppDelegate.h
//  App1
//
//  Created by Praveen Seshadri on 10/5/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MyViewController; 

@interface App1AppDelegate : NSObject <UIApplicationDelegate>

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) MyViewController* myViewController;

@end
