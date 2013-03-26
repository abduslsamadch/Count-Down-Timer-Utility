//
//  CountDownTimerUtility.m
//  CountDownTimer
//
//  Created by abdus on 3/26/13.
//  Copyright (c) 2013 abdus.me. All rights reserved.
//

#import "CountDownTimerUtility.h"

@implementation CountDownTimerUtility
@synthesize delegate;

-(void)startCountDownTimerWithTime:(int)time andUILabel:(UILabel *)currentLabel
{
    countDownTime = time;
    actualTime = time;
    label = currentLabel;
    [self StartCountDownTimer];
}

-(void)invalidateCurrentCountDownTimer
{
    [self InvalidateCountDownTimer];
}

#pragma mark -
#pragma mark count Down Timer
-(void)InvalidateCountDownTimer
{
    countDownTime =actualTime;
    if (CountDownTimer!=nil)
    {
        if ([CountDownTimer isValid])
        {
            [CountDownTimer invalidate];
            
        }
        CountDownTimer=nil;
    }
}

-(void)StartCountDownTimer
{
    [self InvalidateCountDownTimer];
    CountDownTimer=[NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(DecrementCounterValue) userInfo:nil repeats:YES];
    
    label.text=[NSString stringWithFormat:@"%d:00", actualTime];
}

-(void)DecrementCounterValue
{
    if (countDownTime>0)
	{
         countDownTime--;
        if (countDownTime<10)
        {
            label.text=[NSString stringWithFormat:@"0%d:00",countDownTime];
        }
        else
        {
            label.text=[NSString stringWithFormat:@"%d:00",countDownTime];
        }
       
    }
    else
	{
        [self InvalidateCountDownTimer];
        [self performSelectorOnMainThread:@selector(CountDownTimeFinish) withObject:nil waitUntilDone:NO];
    }
}

-(void)CountDownTimeFinish
{
    [delegate timesUpWithLabel:label];
}


@end


