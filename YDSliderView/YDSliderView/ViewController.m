//
//  ViewController.m
//  YDSliderView
//
//  Created by liuyadi on 2016/11/14.
//  Copyright © 2016年 Geek Zoo Studio. All rights reserved.
//

#import "ViewController.h"
#import "YDSlider.h"

@interface ViewController () <YDSliderDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    YDSlider *slider1 = [[YDSlider alloc] initWithFrame:CGRectMake(20, 100, 200, 50) indexLabelType:SLIDER_INDEX_TYPE_CENTER];
    slider1.minimumValue = 10;
    slider1.maximumValue = 30;
    slider1.minimumTrackTintColor = [UIColor redColor];
    slider1.maximumTrackTintColor = [UIColor blackColor];
    slider1.delegate = self;
    [self.view addSubview:slider1];
    
    YDSlider *slider2 = [[YDSlider alloc] initWithFrame:CGRectMake(20, 200, 200, 50) indexLabelType:SLIDER_INDEX_TYPE_TOP];
    slider2.minimumValue = 10;
    slider2.maximumValue = 30;
    slider2.minimumTrackTintColor = [UIColor redColor];
    slider2.maximumTrackTintColor = [UIColor blackColor];
    slider2.delegate = self;
    [self.view addSubview:slider2];
    
    YDSlider *slide3 = [[YDSlider alloc] initWithFrame:CGRectMake(20, 300, 200, 50) indexLabelType:SLIDER_INDEX_TYPE_BOTTOM];
    slide3.minimumValue = 10;
    slide3.maximumValue = 30;
    slide3.minimumTrackTintColor = [UIColor redColor];
    slide3.maximumTrackTintColor = [UIColor blackColor];
    slide3.delegate = self;
    [self.view addSubview:slide3];
}

#pragma mark - YDSliderDelegate

- (void)sliderValueChanged:(YDSlider *)slider {
    NSLog(@"%f", slider.value);
}

@end
