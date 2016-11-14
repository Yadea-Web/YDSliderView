## YDSlider


### Description

* 带数字的Slider

### Demo

![](https://github.com/miss-yadi/YDSlider/blob/master/YDSlider.gif)

### Usage
#### 初始化：设置frame和文字所在的位置（上、中、下），其它的跟普通的UISlider一样

	YDSlider *slider1 = [[YDSlider alloc] initWithFrame:CGRectMake(20, 100, 200, 50) indexLabelType:SLIDER_INDEX_TYPE_CENTER];
    slider1.minimumValue = 10;
    slider1.maximumValue = 30;
    slider1.minimumTrackTintColor = [UIColor redColor];
    slider1.maximumTrackTintColor = [UIColor blackColor];
    slider1.delegate = self;
    [self.view addSubview:slider1];

#### 监听值改变的事件，直接实现代理就可以了

	#pragma mark - YDSliderDelegate

	- (void)sliderValueChanged:(UISlider *)slider {
	    NSLog(@"%f", slider.value);
	}
	

好了，撒花~