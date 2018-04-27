//
//  ViewController2.h
//  Temp
//
//  Created by Roland on 2018-04-26.
//  Copyright © 2018 MoozX Internet Ventures. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"

@interface ViewController2 : UIViewController

@property (strong, nonatomic) NSString *string1;
@property (weak, nonatomic) id<MyDelegateProtocol> delegate;

@end
