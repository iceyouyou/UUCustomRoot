# UUCustomRoot
A category that makes UINavigationController can pop to any specified UIViewController in it's stack.

## Usage
For example, think a UINavigationController stack like this. Currently [cViewController] is Showing on the screen.  
How can we pop back to [aViewController]?
```objective-c
----------------------
| cViewController    | <-- showing UIViewController
----------------------
| bViewController    |
----------------------
| aViewController    | <-- pop back
----------------------
| rootViewController |
----------------------
```

Import header file in [aViewController] and [cViewController]:
```objective-c
#import "UINavigationController+UUCustomRoot.h"
```

Implement `isCustomRootViewController` method in [aViewController]:
```objective-c
- (BOOL)isCustomRootViewController {
	return YES;
}
```

Pop back to [aViewController] by using `popToCustomRootViewControllerAnimated` method in [cViewController]:
```objective-c
[self.navigationController popToCustomRootViewControllerAnimated:YES];
```

## License
`UUCustomRoot` is available under the MIT license. See the LICENSE file for more info.