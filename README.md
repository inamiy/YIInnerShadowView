# YIInnerShadowView

Inner-shadow UIView/CALayer for iOS.

<img src="https://raw.github.com/inamiy/YIInnerShadowView/master/Screenshots/screenshot.jpg" alt="ScreenShot1" width="225px" style="width:225px;" />

## How to use

```
YIInnerShadowView* innerShadowView = [[YIInnerShadowView alloc] initWithFrame:frame];
innerShadowView.shadowRadius = 5;
innerShadowView.shadowMask = YIInnerShadowMaskVertical;
[self.view addSubview:innerShadowView];
```

### YIInnerShadowMask

```
typedef enum {
    YIInnerShadowMaskNone       = 0,
    YIInnerShadowMaskTop        = 1 << 1,
    YIInnerShadowMaskBottom     = 1 << 2,
    YIInnerShadowMaskLeft       = 1 << 3,
    YIInnerShadowMaskRight      = 1 << 4,
    YIInnerShadowMaskVertical   = YIInnerShadowMaskTop | YIInnerShadowMaskBottom,
    YIInnerShadowMaskHorizontal = YIInnerShadowMaskLeft | YIInnerShadowMaskRight,
    YIInnerShadowMaskAll        = YIInnerShadowMaskVertical | YIInnerShadowMaskHorizontal
} YIInnerShadowMask;

```

## Acknowledgement

Main idea is from Matt Wilding:

<http://stackoverflow.com/questions/4431292/inner-shadow-effect-on-uiview-layer>


## License

`YIInnerShadowView` is available under the [Beerware](http://en.wikipedia.org/wiki/Beerware) license.

If we meet some day, and you think this stuff is worth it, you can buy me a beer in return.