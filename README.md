# UUCustomRoot
Make UINavigationController can pop to any specified UIViewController in it's stack.

## Usage
Think a UINavigationController stack like this. And we want to pop to [aViewController] from [cViewController].
```objective-c
----------------------
| cViewController    | <-- showing UIViewController
----------------------
| bViewController    |
----------------------
| aViewController    | <-- pop target
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

Do pop action whit `popToCustomRootViewControllerAnimated` in [cViewController]:
```objective-c
[self.navigationController popToCustomRootViewControllerAnimated:YES];
```

## License
`UUCustomRoot` is available under the MIT license. See the LICENSE file for more info.