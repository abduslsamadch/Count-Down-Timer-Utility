//
//  ViewController.m
//  CountDownTimer
//
//  Created by abdus on 3/26/13.
//  Copyright (c) 2013 abdus.me. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController


#pragma mark -
#pragma mark VC Delegate
- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)viewDidUnload
{
    [timeLabel release];
    timeLabel = nil;
    [button release];
    button = nil;
    [super viewDidUnload];
}

#pragma mark -
#pragma mark CountDownTimer Delegate methods
-(void)timesUpWithLabel:(UILabel *)label
{
    UIAlertView *alert =[[UIAlertView alloc] initWithTitle:@"" message:@"Timer Finished" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [alert show];
    [alert release];
    [button setUserInteractionEnabled:YES];
}


#pragma mark -
#pragma mark dealloc
- (void)dealloc
{
    [timeLabel release];
    [button release];
    [super dealloc];
}

#pragma mark -
#pragma mark IBAction
- (IBAction)startTimer:(id)sender
{
    CountDownTimerUtility *obj = [[[CountDownTimerUtility alloc] init] autorelease];
    [obj setDelegate:self];
    [obj startCountDownTimerWithTime:30 andUILabel:timeLabel];
    [button setUserInteractionEnabled:NO];
}
@end
