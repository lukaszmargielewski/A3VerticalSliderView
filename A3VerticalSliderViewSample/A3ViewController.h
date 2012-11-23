//
//  A3ViewController.h
//  A3VerticalSliderViewSample
//
//  Created by Botond Kis on 12.10.12.
//  Copyright (c) 2012 AllAboutApps. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "A3VerticalSliderView.h"

@interface A3ViewController : UIViewController <A3VerticalSliderViewDelegate>{
    A3VerticalSliderView *slider;
}
@property (retain, nonatomic) IBOutlet UILabel *labelValue;
- (IBAction)buttonRandomTouchUpInside:(id)sender;

@end
