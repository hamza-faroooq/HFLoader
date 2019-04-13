## Introduction

Hi, Humans!

My name is Hamza Farooq and I love 'Swift' programming. I always try to implement new ideas, so here is the glimps of one of my ideas for you.

## HFLoader

HFLoader is a new kind of activity indicator with some awesome animations. Try this new Loader in your projects and enhance the UI experience.

## Example

To run the example project, clone the repo, and run [loaderUsingAnimations.xcodeproj](https://github.com/hamza-faroooq/HFLoader/tree/master/loaderUsingAnimations/loaderUsingAnimations.xcodeproj) from the 'loaderUsingAnimations' directory.

## Usage

Do the following simple steps to make an awesome [HFLoader](https://github.com/hamza-faroooq/HFLoader)

First of all, download the project, and then place the file named [loaderAnimation.swift](https://github.com/hamza-faroooq/HFLoader/blob/master/loaderUsingAnimations/loaderUsingAnimations/customClasses/loaderAnimation.swift) in your project. 

After this, make a new view as (e.g):

```swift
let loaderView = loaderAnimation(frame: CGRect.init(x: 0, y: 0, width: 50, height: 50), viewBGColor: .clear, viewBorderWidth: 2, viewBorderColor: UIColor.orange, viewCornerRadius: 5, viewImage: #imageLiteral(resourceName: "Icon-App-60x60"))
```

Add loaderView as a subView in your controller's main view in your viewDidLoad() as:

```swift
override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(loaderView)
}
```

Write this line whenever you want to start using HFLoader:

```swift
loaderView.startAnimation()
```

Write this line whenever you want to stop using HFLoader:

```swift
loaderView.stopAnimation()
```

That's it... :-)

## Contributions

Your contributions are most welcomed. Do let me know if you find any kind of issue while using this file. Please open an issue to discuss that problem. Thanks

## Auther

Hamza Farooq, hamza_faroooq@yahoo.com

## License

[MIT](https://github.com/hamza-faroooq/HFLoader/blob/master/LICENSE)
