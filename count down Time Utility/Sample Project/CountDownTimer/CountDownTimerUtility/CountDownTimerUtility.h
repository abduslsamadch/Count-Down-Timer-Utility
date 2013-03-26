//
//  CountDownTimerUtility.h
//  CountDownTimer
//
//  Created by abdus on 3/26/13.
//  Copyright (c) 2013 abdus.me. All rights reserved.
//

#import <Foundation/Foundation.h>
@protocol CountDownTimerProtocol
@optional
-(void)timesUpWithLabel:(UILabel *)label;
@end

@interface CountDownTimerUtility : NSObject
{
    NSTimer *CountTimer;
    NSTimer *CountDownTimer;
    int countDownTime;
    int actualTime;
    UILabel *label;
    id<CountDownTimerProtocol>delegate;
}
@property (retain)id<CountDownTimerProtocol>delegate;
-(void)startCountDownTimerWithTime:(int)time andUILabel:(UILabel *)currentLabel;
-(void)invalidateCurrentCountDownTimer;
@end
