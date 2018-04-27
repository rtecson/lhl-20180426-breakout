//
//  ViewController.h
//  Temp
//
//  Created by Roland on 2018-04-26.
//  Copyright © 2018 MoozX Internet Ventures. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol MyDelegateProtocol

- (void)myFunction;

@end


@interface ViewController : UIViewController <MyDelegateProtocol>


@end

