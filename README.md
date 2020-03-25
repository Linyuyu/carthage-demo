## Test Steps

1. 
```sh
carthage update --platform iOS
```

2. use [XCodegen](https://github.com/yonaskolb/XcodeGen) to generate .xcodeproj 
```sh
xcodegen generate
```

3. 
```sh
xcodebuild -scheme MyFramework -project CarthageDemo.xcodeproj build
```
**build success!**

4.
```sh
carthage build --no-skip-current
```
`Skipped building CarthageDemo due to the error:
Dependency "CarthageDemo" has no shared framework schemes`

**failed!**