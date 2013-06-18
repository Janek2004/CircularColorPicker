//
//  ViewController.m
//  CircularColorPicker
//
//  Created by Janusz Chudzynski on 6/17/13.
//  Copyright (c) 2013 Janusz Chudzynski. All rights reserved.
//

#import "ViewController.h"
#import "CircularPicker.h"

@interface ViewController (){
CircularPicker * cp;
NSTimer * timer;
}
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    cp = [[CircularPicker alloc] initWithFrame:self.view.bounds andCompletionHandler:^(UIColor * color){
        @try {
            NSLog(@"Color is %@",color);
            [UIView animateWithDuration:0.5 animations:^{
                self.view.backgroundColor = color;
            }];
        }
        @catch (NSException *exception) {
            NSLog(@" Exception %@",[exception debugDescription]);
        }
        @finally {

        }
    }];
    
    timer = [NSTimer scheduledTimerWithTimeInterval:1/30.f target:self selector:@selector(rotate:) userInfo:nil repeats:YES];
    [self.view addSubview:cp];
}

-(void)rotate:(id)timer{
    CGAffineTransformRotate(cp.transform, 1);
    cp.transform =  CGAffineTransformRotate(cp.transform, degreesToRadians(1));
}

          
          

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
