//
//  ViewController.m
//  Temp
//
//  Created by Roland on 2018-04-26.
//  Copyright © 2018 MoozX Internet Ventures. All rights reserved.
//

#import "ViewController.h"
#import "ViewController2.h"

@interface MyModel : NSObject

- (void)doSomething:(NSString *)param1 completion:(void(^)(void))completion;

@end

@implementation MyModel
- (void)doSomething:(NSString *)param1 completion:(void (^)(void))completion
{
    NSLog(@"MyModel: I'm doing something");
    dispatch_async(dispatch_get_main_queue(), ^{
        // I'm doing some async network call here... when finished, call completion()
        completion();
    });
    NSLog(@"MyModel: I'm still doing something");
}
@end

@interface ViewController ()
@property MyModel *myModel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.myModel = [[MyModel alloc] init];
    
    [self.myModel doSomething:@""
                   completion:^{
        NSLog(@"ViewController: Method call is completed");
    }];
    
    NSLog(@"ViewController: After calling doSomething");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)button2Tapped:(id)sender {
    [self performSegueWithIdentifier:@"mySegue" sender:self];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"mySegue"]) {
        ViewController2 *vc2 = segue.destinationViewController;
        vc2.string1 = @"Hello";
        vc2.delegate = self;
    }
}

- (void)myFunction
{
    NSLog(@"Information received");
}

@end
