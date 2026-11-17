# swiftUI-study

[![Swift](https://img.shields.io/badge/Swift-5.5%2B-F05138?logo=swift&logoColor=white)](https://www.swift.org)
[![iOS](https://img.shields.io/badge/iOS-13%20%7C%2015.2%20%7C%2016%20%7C%2017-000000?logo=apple&logoColor=white)](https://developer.apple.com/swiftui/)
[![平台](https://img.shields.io/badge/平台-iOS%20%2F%20部分示例含%20macOS-0A84FF)](https://developer.apple.com/tutorials/swiftui-concepts)

个人 SwiftUI 学习记录。仓库里放着 Apple 官方教程示例，以及几份自己写的界面练习。没有统一的 App 入口，每个子目录都是独立工程。

现有根说明只有标题「apple官网swiftui学习示例」。下面按仓库里的工程、部署版本和启动代码重新整理。

## 内容一览

只列出仓库中已经存在的目录。Apple 示例保持官方结构，各目录内另有英文 README 和许可文件。

### Swift Playgrounds 应用包（`.swiftpm`）

用 Swift Playgrounds 或 Xcode 打开对应目录。`Package.swift` 由 Playgrounds 生成，产品类型是 `iOSApplication`，并 `import AppleProductTypes`。请在 Playgrounds 或 Xcode 里运行，`swift build` 无法编译这类应用包。最低系统以各包的 `platforms` 为准，设备家族都是 iPhone 与 iPad。

| 目录 | 应用名 | 最低系统 | 内容 |
| --- | --- | --- | --- |
| [`About Me.swiftpm`](About%20Me.swiftpm) | About Me | iOS 15.2 | 用底部 Tab 在多个页面展示同一份资料。教程：[About Me](https://developer.apple.com/tutorials/sample-apps/aboutme) |
| [`Animating Shapes.swiftpm`](Animating%20Shapes.swiftpm) | Animating Shapes | iOS 16.0 | 用 `Shape` 画图形并做动画。教程：[Animating Shapes](https://developer.apple.com/tutorials/sample-apps/animatingshapes) |
| [`Bubble Level.swiftpm`](Bubble%20Level.swiftpm) | Bubble Level | iOS 15.2 | 订阅设备姿态，用数字和气泡水平仪显示倾斜。教程：[Bubble Level](https://developer.apple.com/tutorials/sample-apps/bubblelevel) |
| [`Capturing Photos.swiftpm`](Capturing%20Photos.swiftpm) | Capturing Photos | iOS 16.0 | 调用相机拍照、写入相册并在应用里显示。声明了相机和相册权限。教程：[Capturing Photos](https://developer.apple.com/tutorials/sample-apps/capturingphotos-captureandsave) |
| [`Choose Your Own Story.swiftpm`](Choose%20Your%20Own%20Story.swiftpm) | Choose Your Own Story | iOS 16.0 | 用 `StoryData`、`StoryView`、`StoryPageView` 做分支故事导航。教程：[Choose Your Own Story](https://developer.apple.com/tutorials/sample-apps/chooseyourownstory) |
| [`Date Planner.swiftpm`](Date%20Planner.swiftpm) | Date Planner | iOS 15.2 | 用列表和可观察数据模型按日期组织活动。教程：[Date Planner](https://developer.apple.com/tutorials/sample-apps/dateplanner) |
| [`Editing Grids.swiftpm`](Editing%20Grids.swiftpm) | Editing Grids | iOS 16.0 | 在 SF Symbols 网格里导航，并增加、删除格子。教程：[Editing Grids](https://developer.apple.com/tutorials/sample-apps/editinggrids) |
| [`Get Started with Machine Learning.swiftpm`](Get%20Started%20with%20Machine%20Learning.swiftpm) | Get Started with Machine Learning | iOS 16.0 | 石头剪刀布图像分类调试示例。带相机、相册和用户所选文件权限，资源里有 `Dataset/`（训练与验证图片）和 `rockpaperscissors.mlmodel`。`platforms` 还写了 macOS 16.0，产品仍是 iOS 应用。教程：[Debugging Your Machine Learning Model](https://developer.apple.com/tutorials/sample-apps/getstartedwithmachinelearning-debugmlmodel) |
| [`Image Gallery.swiftpm`](Image%20Gallery.swiftpm) | Image Gallery | iOS 16.0 | 从资源目录或相册取图，用网格展示，并处理加载中的进度。`App/Resources` 里是黄石等主题照片。教程：[Image Gallery](https://developer.apple.com/tutorials/sample-apps/imagegallery) |
| [`Laying Out Views.swiftpm`](Laying%20Out%20Views.swiftpm) | Bullet Journal | iOS 16.0 | 布局练习：容器、尺寸、对齐，以及睡眠、心情、照片、文字等卡片。包名和显示名是 Bullet Journal。教程：[Laying Out Views](https://developer.apple.com/tutorials/sample-apps/layingoutviews) |
| [`Meme Creator.swiftpm`](Meme%20Creator.swiftpm) | Meme Creator | iOS 16.0 | 异步拉取 JSON 和熊猫图片做表情包。声明了出站网络。教程：[Meme Creator](https://developer.apple.com/tutorials/sample-apps/memecreator) |
| [`Organizing with Grids.swiftpm`](Organizing%20with%20Grids.swiftpm) | Organizing with Grids | iOS 15.2 | 用网格排列色块，并用状态记录当前选中颜色。教程：[Organizing with Grids](https://developer.apple.com/tutorials/sample-apps/organizingwithgrids) |
| [`Recognizing Gestures.swiftpm`](Recognizing%20Gestures.swiftpm) | Recognizing Gestures | iOS 16.0 | 点击、拖动、长按等手势更新图形。教程：[Recognizing Gestures](https://developer.apple.com/tutorials/sample-apps/recognizinggestures) |
| [`Seismometer.swiftpm`](Seismometer.swiftpm) | Seismometer | iOS 16.0 | 用运动传感器显示振动，界面有指针和折线。教程：[Seismometer](https://developer.apple.com/tutorials/sample-apps/seismometer) |

### SwiftUI Concepts（Xcode 工程）

来自 [SwiftUI Concepts](https://developer.apple.com/tutorials/swiftui-concepts)。Swift 5.0，同时配置了 iOS 与 macOS 部署版本。用 Xcode 打开各目录下的 `.xcodeproj`。

| 目录 | 工程 | 部署版本 | 内容 |
| --- | --- | --- | --- |
| [`organizing-and-aligning-content-with-stacks`](organizing-and-aligning-content-with-stacks) | `EventTile.xcodeproj` | iOS 16.0 / macOS 12.3 | 用栈组织并对齐活动卡片（标题、日期、地点、符号）。[教程](https://developer.apple.com/tutorials/swiftui-concepts/organizing-and-aligning-content-with-stacks) |
| [`adjusting-the-space-between-views`](adjusting-the-space-between-views) | `SpacingViews.xcodeproj` | iOS 16.0 / macOS 13.0 | 用小火车车厢演示默认间距、指定间距、`Spacer` 和各种 `padding`。[教程](https://developer.apple.com/tutorials/swiftui-concepts/adjusting-the-space-between-views) |
| [`layering-content`](layering-content) | `CaptionedPhoto.xcodeproj` | iOS 16.0 / macOS 13.0 | 在照片上叠加说明文字（示例文案是一丛粉色牡丹）。[教程](https://developer.apple.com/tutorials/swiftui-concepts/layering-content) |
| [`scaling-views-to-complement-text`](scaling-views-to-complement-text) | `KeywordBubble.xcodeproj` | iOS 16.0 / macOS 12.3 | 对比默认 padding 和 `@ScaledMetric`，让气泡随文字缩放。[教程](https://developer.apple.com/tutorials/swiftui-concepts/scaling-views-to-complement-text) |
| [`choosing-the-right-way-to-hide-a-view`](choosing-the-right-way-to-hide-a-view) | `HidingViews.xcodeproj` | iOS 16.0 / macOS 12.3 | 用 `if` 条件移除中间车厢，以及用 `opacity` 把它藏起来。[教程](https://developer.apple.com/tutorials/swiftui-concepts/choosing-the-right-way-to-hide-a-view) |
| [`driving-changes-in-your-ui-with-state-and-bindings-sample`](driving-changes-in-your-ui-with-state-and-bindings-sample) | `RecipesSample.xcodeproj` | iOS 16.0 / macOS 13.0 | 食谱示例：侧边栏、列表、详情、编辑表单和星级控件，数据来自 `recipeData.json`。[教程](https://developer.apple.com/tutorials/swiftui-concepts/driving-changes-in-your-ui-with-state-and-bindings) |
| [`specifying-the-view-hierarchy-of-an-app-using-a-scene-sample`](specifying-the-view-hierarchy-of-an-app-using-a-scene-sample) | `SceneSample.xcodeproj` | iOS 16.0 / macOS 13.0 | 日志应用。`MyApp` 在 iOS 上使用 `MyAlternativeScene`，在 macOS 上使用 `MyScene`。[教程](https://developer.apple.com/tutorials/swiftui-concepts/specifying-the-view-hierarchy-of-an-app-using-a-scene) |

### 自己的练习

| 目录 | 类型 | 部署版本 | 内容 |
| --- | --- | --- | --- |
| [`swiftUIDemo`](swiftUIDemo) | SwiftUI + CocoaPods | iOS 17.0 | Bundle ID `com.yiwen.swiftUIDemo`。启动后是 `NavigationStack` 包着 `ListView`。依赖 TangramKit 1.4.2 |
| [`TestSnapkit`](TestSnapkit) | UIKit + CocoaPods | 主应用 target iOS 13.0（工程级 15.1，单元测试 target iOS 17.0） | Bundle ID `com.yiwen.TestSnapkit`。启动页是 TangramKit 写的登录布局。依赖 SnapKit 5.6.0、TangramKit 1.4.2 |
| [`StateTestView`](StateTestView) | SwiftUI | iOS 17.0 | Bundle ID `com.yiwen.StateTestView`。根界面是一个 `WKWebView` |
| [`MyLibrary`](MyLibrary) | Swift Package | 工具版本 Swift 5.9，未声明平台 | Xcode 新建库模板。`MyLibrary.swift` 只有文档链接注释，测试方法是空的 |
| [`MyImageClassifier.mlproj`](MyImageClassifier.mlproj) | Create ML 图像分类工程 | Create ML 工程格式 1.1 | 2023-10-21 创建，实验状态为 `uninitialized`。仓库里没有训练图片，也没有导出的模型 |

`swiftUIDemo` 从首页能走到这些页面：

- 输入测试页面：`ContentView`，编辑 `TestModel.content`，并用 `UserDefaults` 键 `content` 保存
- 列表测试页面 2：`ListView1`，其中一项「测试内容」进入 `DemoView`
- UIKit 测试页面：`UIKitViewController`，用 TangramKit 放一行版权文字，年份来自 `SuperDateUtil`
- table 页面：`TableView`，当前界面是几行文字、指向 apple.com 的 `Link`，以及 `ShareLink`。`Table` 那段代码在文件里被注释掉了

`DemoView` 点击按钮后请求 `http://localhost:3000`，把响应正文显示出来。仓库里没有这个本地服务。

`DatePickerView`（日期、口味选择、颜色、进度）和 `ScrollViewReader`（`Grid`、滑块等控件试写）只在各自文件里，没有从 `ListView` 链出去。

`TestSnapkit` 的 `AppDelegate` 把 `TangramKitViewController` 放进导航控制器。界面是一个登录草稿：Logo、手机号登录、用户名密码登录、四个 SF Symbol 圆形按钮，以及用户协议文案。手机号登录会 push `SettingController`（标题「设置界面」）。用户名密码按钮的点击方法是空的。`ViewController.swift` 是一份用 SnapKit 写的相近登录布局，当前没有被设为根控制器。`TestSnapkitTests` 与 `TestSnapkitUITests` 仍是 Xcode 模板，里面没有针对登录页的断言。

`StateTestView` 启动后加载 `https://www.baidu.com`，导航标题是 “OpenAI”。同目录还有 `UserSettings`（一个 `@Published` 的 `score`）和 `DetailView`（显示并增加分数），根视图没有创建或注入它们。

## 技术栈与依赖

| 项目 | 版本或范围 |
| --- | --- |
| 语言 | Swift 5。Playgrounds 包的 tools version 为 5.5 或 5.6；`MyLibrary` 为 5.9。Xcode 工程的 `SWIFT_VERSION` 为 5.0 |
| UI | SwiftUI；`TestSnapkit` 与 `swiftUIDemo` 的一页使用 UIKit |
| Apple 示例 | [SwiftUI Sample Apps](https://developer.apple.com/tutorials/sample-apps/aboutme) 与 [SwiftUI Concepts](https://developer.apple.com/tutorials/swiftui-concepts) |
| CocoaPods | 锁文件记录为 1.11.2。`Pods/` 已提交 |
| TangramKit | 1.4.2（`swiftUIDemo`、`TestSnapkit`） |
| SnapKit | 5.6.0（仅 `TestSnapkit`） |
| 机器学习资源 | `Get Started with Machine Learning.swiftpm` 内的 Core ML 模型与石头剪刀布数据集；另有一份未训练的 Create ML 工程 |

## 目录结构

```text
.
├── About Me.swiftpm/                          # 以及其余 *.swiftpm，结构相同
│   ├── Package.swift
│   ├── README.md
│   ├── License.txt                            # 部分示例有
│   └── App/
├── organizing-and-aligning-content-with-stacks/
│   ├── EventTile.xcodeproj
│   ├── EventTile/
│   ├── Configuration/
│   └── LICENSE/
├── adjusting-the-space-between-views/         # Spacing、Padding、AddingViews
├── layering-content/
├── scaling-views-to-complement-text/
├── choosing-the-right-way-to-hide-a-view/
├── driving-changes-in-your-ui-with-state-and-bindings-sample/
│   └── RecipesSample/                         # Models、Views、Resources
├── specifying-the-view-hierarchy-of-an-app-using-a-scene-sample/
│   └── SceneSample/                           # Models、Scenes、Views
├── swiftUIDemo/
│   ├── swiftUIDemo.xcworkspace                # 打开这个
│   ├── swiftUIDemo.xcodeproj
│   ├── Podfile / Podfile.lock / Pods/
│   └── swiftUIDemo/                           # View、Model、Fetch、Util
├── TestSnapkit/
│   ├── TestSnapkit.xcworkspace                # 打开这个
│   ├── TestSnapkit/                           # Controller、View
│   ├── TestSnapkitTests/
│   └── TestSnapkitUITests/
├── StateTestView/
├── MyLibrary/
│   ├── Package.swift
│   ├── Sources/MyLibrary/
│   └── Tests/MyLibraryTests/
└── MyImageClassifier.mlproj/
```

概念示例的其余目录与 `organizing-and-aligning-content-with-stacks` 一样：一个 `.xcodeproj`、一份源码目录、`Configuration/` 和 `LICENSE/`。

## 环境要求

- 运行界面工程需要 macOS 上的 Xcode。SwiftUI Concepts 工程按配置可在 iOS 模拟器或 macOS 目标上运行；`.swiftpm` 示例的产品是 iOS 应用，也可在 iPad 上的 Swift Playgrounds 中打开。
- 模拟器或真机的系统版本需要达到该工程的部署版本。官方示例从 iOS 15.2 到 iOS 16.0；`swiftUIDemo` 和 `StateTestView` 是 iOS 17.0。
- 真机运行前，在签名设置里选择自己的 Development Team。部分 `Package.swift` 写了 `teamIdentifier`，Xcode 工程的 `DEVELOPMENT_TEAM` 也有预填值（`84F8R9TAQN`、`9A2B8M6MSW`、`A93A5CM278`）。装到自己的设备时改成自己的团队。
- `Bubble Level`、`Seismometer` 以及相机示例依赖真机传感器或相机。模拟器上看不到真实的倾斜、振动或拍照结果。
- 重新执行 `pod install` 时需要 CocoaPods，并能访问 CocoaPods trunk。现有 `Pods/` 已可直接打开。
- `MyLibrary` 需要 Swift 5.9 或更高版本的工具链。
- `MyImageClassifier.mlproj` 用 Create ML 打开。工程文件写明：Create ML 版本过旧时无法打开。

## 安装与运行

克隆后进入仓库，按子目录单独打开。下面的 `open` 是 macOS 命令。

```bash
git clone https://github.com/Hao-yiwen/swiftUI-study.git
cd swiftUI-study
```

**Playgrounds 应用包。** 用 Xcode 或 Swift Playgrounds 打开目录，选模拟器或设备后运行。以 About Me 为例：

```bash
open "About Me.swiftpm"
```

其他 `.swiftpm` 同样处理，目录名里的空格保留引号。

**SwiftUI Concepts。** 打开 `.xcodeproj`，选择对应 scheme 和运行目标：

```bash
open organizing-and-aligning-content-with-stacks/EventTile.xcodeproj
open adjusting-the-space-between-views/SpacingViews.xcodeproj
open layering-content/CaptionedPhoto.xcodeproj
open scaling-views-to-complement-text/KeywordBubble.xcodeproj
open choosing-the-right-way-to-hide-a-view/HidingViews.xcodeproj
open driving-changes-in-your-ui-with-state-and-bindings-sample/RecipesSample.xcodeproj
open specifying-the-view-hierarchy-of-an-app-using-a-scene-sample/SceneSample.xcodeproj
```

**带 CocoaPods 的练习。** 依赖已在 `Pods/` 中，打开 workspace：

```bash
open swiftUIDemo/swiftUIDemo.xcworkspace
open TestSnapkit/TestSnapkit.xcworkspace
```

若要按锁文件重装依赖：

```bash
cd swiftUIDemo && pod install
cd ../TestSnapkit && pod install
```

**StateTestView：**

```bash
open StateTestView/StateTestView.xcodeproj
```

**MyLibrary**（空模板，可在装有 Swift 5.9+ 的环境编译）：

```bash
cd MyLibrary
swift build
swift test
```

**Create ML 工程：**

```bash
open MyImageClassifier.mlproj
```

打开后仍需在 Create ML 里提供分类图片才能训练。当前实验没有训练数据。

## 截图

仓库没有单独的界面截图。各示例的图片在自己的 `Assets.xcassets` 或 `Resources` 中，例如 `Image Gallery.swiftpm/App/Resources` 的照片，以及 `Laying Out Views.swiftpm/App/Resources` 的花朵与风景图。`Laying Out Views.swiftpm/README.md` 引用了 `intro-header.png`，该文件不在仓库里。

## 备注

- Apple 示例的版权与使用条款在各自的 `License.txt` 或 `LICENSE/` 中，本仓库根目录没有单独的许可证。
- `Meme Creator` 需要网络。`swiftUIDemo` 的 `DemoView` 只请求本机 `localhost:3000`，没有配套服务时按钮不会得到页面上的结果文本。
- `Get Started with Machine Learning.swiftpm` 自带一份石头剪刀布模型和数据集。`MyImageClassifier.mlproj` 是另一份尚未训练的 Create ML 工程，两者没有连在一起。
- 本说明只描述当前代码。练习工程里有预览、注释掉的控件和未接入导航的视图，运行时以 `@main` 入口和实际跳转代码为准。

### 本次核对

文档中的部署版本、依赖版本、入口类型和页面跳转，来自 `Package.swift`、`project.pbxproj`、`Podfile.lock` 和对应 Swift 源文件。教程链接已逐条请求，均返回 200。

当前核对环境是 Ubuntu 24.04（x86_64），没有安装 Xcode、Swift 工具链或 CocoaPods，因此没有执行 `open`、`xcodebuild`、`swift build` 或 `pod install`，也没有启动任何一个 iOS / macOS 目标。上面的运行步骤需要在 macOS 上验证。
