//
//  ViewController.h
//  CountDownTimer
//
//  Created by abdus on 3/26/13.
//  Copyright (c) 2013 abdus.me. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CountDownTimerUtility.h"
@interface ViewController : UIViewController<CountDownTimerProtocol>
{
    IBOutlet UILabel *timeLabel;
    IBOutlet UIButton *button;
    
}
- (IBAction)startTimer:(id)sender;
@end
