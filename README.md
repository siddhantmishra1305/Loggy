<p align="center" >
  <img src="https://github.com/siddhantmishra1305/Loggy/blob/master/icon-256x256.png" title="Loggy logo" float=left>
</p>

# Loggy
[![Pod Version](https://img.shields.io/badge/version-1.0.0-blue)](http://cocoadocs.org/docsets/CocoaLumberjack/)
[![Pod Platform](https://img.shields.io/badge/platform-ios-brightgreen)]()
[![Pod License](https://img.shields.io/hexpm/l/plug)](https://opensource.org/licenses/Apache-2.0)

**Loggy** is a simple logging framework for iOS with a dedicated mac application to view analytics and log report.

### Installation

### CocoaPods 

```ruby
platform :ios, '9.0'

target 'SampleTarget' do
  use_frameworks!
  pod 'Loggy'
end
```

### Usage

1. You can simply use `import Loggy` to get started.

2. Add `Loggy.setup` to `application:didFinishLaunchingWithOptions:` 

```swift
 func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        Loggy.setup()
        return true
 }
```

3. To log use `Loggy.log(value: "Nice information", type: .Info)`

```swift
  Loggy.log(value: "Nice information", type: .Info)
  Loggy.log(value: "Exception", type: .Error)
  Loggy.log(value: "log system info", type: .Verbose)
  Loggy.log(value: "Warning recieved", type: .Warning)
```

### Mac app to view analytics

[**Loggy Analytics**](https://github.com/siddhantmishra1305/LoggyAnalytics)


1. **Import** the log file.
<p align="left" >
  <img width="430" height="300" src="https://github.com/siddhantmishra1305/Loggy/blob/master/Import.png" title="Import log file" float=left>
</p>

2. **Dashboard** tab shows a consolidated report of errors,warning etc.
 <p align="left" >
  <img width="430" height="300" src="https://github.com/siddhantmishra1305/Loggy/blob/master/Dashboard.png" title="Dashboard" float=left>
</p>

3. **Log Details** shows detailed information such as **filename**, **function name** , **line number** and **time stamp**.
<p align="left" >
  <img width="430" height="300" src="https://github.com/siddhantmishra1305/Loggy/blob/master/LogDetails.png" title="Log Report" float=left>
</p>

## Coming Soon
- Carthage Support
- macOS,tvOS and watchOS support
- 

## Author
- [Siddhant Mishra](https://www.linkedin.com/in/siddhant-mishra-722834105)

## License
- Loggy is available under the Apache 2 license. See the [LICENSE file](https://github.com/siddhantmishra1305/Loggy/blob/master/LICENSE).



