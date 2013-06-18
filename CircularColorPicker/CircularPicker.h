//
//  CircularPicker.h
//  CircularColorPicker
//
//  Created by Janusz Chudzynski on 6/17/13.
//  Copyright (c) 2013 Janusz Chudzynski. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef  void (^ColorFromPickerBlock)(UIColor* color);
@interface CircularPicker : UIView
- (id)initWithFrame:(CGRect)frame andCompletionHandler:(ColorFromPickerBlock)completionBlock;




@end
