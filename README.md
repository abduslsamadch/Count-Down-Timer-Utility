Count-Down-Timer-Utility
========================

A utility to implement count down timer.
Add CountDownTimerUtility.h and CountDownTimerUtility.m to your project.
Import CountDownTimerUtility.h in your class you want to use count down timer
Conform CountDownTimerProtocol
Make instance of CountDownTimerUtility and set delegate
Send message to start count down timer with time limit and UILabel that will display count down timer playing.

    CountDownTimerUtility *obj = [[[CountDownTimerUtility alloc] init] autorelease];
    [obj setDelegate:self];
    [obj startCountDownTimerWithTime:30 andUILabel:timeLabel];
    
Implement delegate method in your class 

    -(void)timesUpWithLabel:(UILabel *)label

this method will be called when time is up and you can perform whatever you want from this method.

Download repositroy that contains sample project and reusable CountDownTimerUtility class.
