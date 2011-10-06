//
//  MyViewController.m
//  App1
//
//  Created by Praveen Seshadri on 10/5/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "MyViewController.h"

@implementation MyViewController
@synthesize responseLabel;
@synthesize inputName;
@synthesize userName=_userName;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [self setInputName:nil];
    [self setResponseLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)changeGreeting:(id)sender {
    self.userName = self.inputName.text;
    
    NSString* inputString = self.userName;
    if ([inputString length] == 0)
    {
        inputString = @"John Doe";
    }
    
    NSString* responseString = [[NSString alloc] initWithFormat:@"Welcome %@!", inputString];
    
    self.responseLabel.text = responseString;
}

- (void)dealloc {
    [inputName release];
    [responseLabel release];
    [_userName release];
    [super dealloc];
}

- (BOOL)textFieldShouldReturn:(UITextField *)theTextField {
    if (theTextField == self.inputName)
    {
        [theTextField resignFirstResponder];
    }
    return YES;
}

@end
