#Taptic Engine Playground

This example was used to discover the Apple's usage of 

This sample displays a UITableViewController that triggers view controller previews, using preferredContentSize to show previews of different sizes. The sample also includes single-item and grouped action items.

## Disclaimer

**When you are using Apple Private API's you are taking all responsibility for any damage done to your device. That includes running and testing all code, contained in this repository.**

## Research

The values for peek and pop were discovered using [Aspects](https://github.com/steipete/Aspects) and this is an example output:

```
// Cell touch
2015-09-28 01:32:25.322 ViewControllerPreview[656:143905] prepareUsingFeedback: (
    0
)
2015-09-28 01:32:25.325 ViewControllerPreview[656:143905] prepareUsingFeedback: (
    1
)
// Peek
2015-09-28 01:32:26.443 ViewControllerPreview[656:143905] actuateFeedback: (
    1001
)
2015-09-28 01:32:27.519 ViewControllerPreview[656:143905] endUsingFeedback: (
    0
)
2015-09-28 01:32:27.520 ViewControllerPreview[656:143905] endUsingFeedback: (
    1
)
// Pop
2015-09-28 01:32:27.538 ViewControllerPreview[656:143905] actuateFeedback: (
    1002
)
```

## Requirements

### Build

iOS 9 SDK, Xcode 7

### Runtime

iOS 9

# Thanks

A big thanks goes to **Peter Steinberger** for all his work on **Aspects**.

Contact
======

Dal Rupnik

- [legoless](https://github.com/legoless) on **GitHub**
- [@thelegoless](https://twitter.com/thelegoless) on **Twitter**
- [dal@unifiedsense.com](mailto:dal@unifiedsense.com)

License
======

**TapticPlayground** is released under the **MIT** license. See [LICENSE](https://github.com/Legoless/TapticPlayground/blob/master/LICENSE) file for more information.
