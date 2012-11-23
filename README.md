 
#What is A3VerticalSliderView?
**A3VerticalSliderView** is a simple vertical slider with animation.  

It is written in *Objective-C* and works for all iOS applications.  
ARC is not enabled for the project, but you can easily convert it to arc with the XCode built in ARC converter or by remove the dealloc method and the two or three releases.  
If you are too lazy for that, you can still set the `-fno-objc-arc` flag.

##Video:
![A3VerticalSliderView sample](https://dl.dropbox.com/u/9934540/aaa/A3VerticalSliderViewSample.gif "A3VerticalSliderView Sample Video")

##Usage:
Add the **A3VerticalSliderView** directory to your project and import the header.  
Initialize a **A3VerticalSliderView** like any other View by code or in the InterfaceBuilder.
Listen to changes with the delegate method

    - (void)A3VerticalSliderViewDidChangeValue:(A3VerticalSliderView *)sliderView;

You can fully customize the appearance of the positionIndicator and the Background. You can also set its value manually animated.  
Basically that's all. For more info take a look at the header file.  

#License:
[See our BSD 3-Clause License](https://github.com/allaboutapps/A3VerticalSliderView/blob/master/LICENSE.txt)

#Contribute:
Feel free to fork and make pull requests! We are also very happy if you tell us about your app(s) which use this control.  


![aaa - AllAboutApps](https://dl.dropbox.com/u/9934540/aaa/aaaLogo.png "aaa - AllAboutApps")  
[© allaboutapps 2012](http://www.allaboutapps.at)