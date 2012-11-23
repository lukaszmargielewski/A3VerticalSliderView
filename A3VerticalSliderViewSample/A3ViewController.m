//
//  A3ViewController.m
//  A3VerticalSliderViewSample
//
//  Created by Botond Kis on 12.10.12.
//  Copyright (c) 2012 AllAboutApps. All rights reserved.
//

#import "A3ViewController.h"

@interface A3ViewController ()

@end

@implementation A3ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    slider = [[A3VerticalSliderView alloc] initWithFrame:CGRectMake(self.view.frame.size.width - 24, 0, 24, self.view.frame.size.height)];
    slider.delegate = self;
    [self.view addSubview:slider];
    
    UIImage *sliderBGImage = [UIImage imageNamed:@"sliderBG.png"];
    sliderBGImage = [sliderBGImage resizableImageWithCapInsets:UIEdgeInsetsMake(0, 2, 0, 2)];
    slider.backgroundColor = [UIColor colorWithPatternImage:sliderBGImage];
    
    
    UIImage *sliderImage = [UIImage imageNamed:@"slider.png"];
    sliderImage = [sliderImage resizableImageWithCapInsets:UIEdgeInsetsMake(12, 8, 12, 8)];
    UIImageView *sliderImageView = [[UIImageView alloc] initWithImage:sliderImage];
    sliderImageView.frame = CGRectMake(5, 0, 14, 88);
    slider.positionIndicator = sliderImageView;
}

- (void)didReceiveMemoryWarning
{
    [slider release];
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_labelValue release];
    [super dealloc];
}
- (void)viewDidUnload {
    [self setLabelValue:nil];
    [super viewDidUnload];
}


- (void)A3VerticalSliderViewDidChangeValue:(A3VerticalSliderView *)sliderView{
    self.labelValue.text = [NSString stringWithFormat:@"%.2f", slider.sliderValue];
}

- (IBAction)buttonRandomTouchUpInside:(id)sender {
    CGFloat randVal = fabs(arc4random()%100);
    randVal /= 100.0f;
    
    [slider setSliderValue:randVal animated:YES];
}
@end
