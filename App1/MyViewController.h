//
//  MyViewController.h
//  App1
//
//  Created by Praveen Seshadri on 10/5/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyViewController : UIViewController <UITextFieldDelegate> {
    UITextField *inputName;
    UILabel     *responseLabel;
    NSString    *userName;
}

- (IBAction)changeGreeting:(id)sender;

@property (nonatomic, retain) IBOutlet UILabel *responseLabel;
@property (nonatomic, retain) IBOutlet UITextField *inputName;

@property (nonatomic, copy) NSString* userName;

@end
