# 부스트코스 iOS 프로그래밍 예제

- 부스트코스 "iOS 프로그래밍" 강좌의 예제 저장소입니다.
- 과제 프로젝트와 관련된 내용은 없습니다.
- Ref: [부스트코스 - iOS 프로그래밍](https://www.edwith.org/boostcourse-ios/)



<br/><br/><br/>

# 요약정리 게시글 링크

1. 음원 재생기 애플리케이션 (예정)
2. 회원가입 화면 구현
    0. [파트 개요](https://kyungminleedev.github.io/notes/Boostcourse-iOS-2-SignUp-0~2/#0-%ED%8C%8C%ED%8A%B8-%EA%B0%9C%EC%9A%94)
    1. [Human Interface Guidelines](https://kyungminleedev.github.io/notes/Boostcourse-iOS-2-SignUp-0~2/#1-human-interface-guidelines)
    2. [화면의 전환](https://kyungminleedev.github.io/notes/Boostcourse-iOS-2-SignUp-0~2/#2-%ED%99%94%EB%A9%B4%EC%9D%98-%EC%A0%84%ED%99%98)
        - 내비게이션 인터페이스
        - 모달
    3. [뷰의 상태변화 감지](https://kyungminleedev.github.io/notes/Boostcourse-iOS-2-SignUp-3/)
    4. [Delegation](https://kyungminleedev.github.io/notes/Boostcourse-iOS-2-SignUp-4/)
    5. [Singleton](https://kyungminleedev.github.io/notes/Boostcourse-iOS-2-SignUp-5/)
    6. [Target-Action](https://kyungminleedev.github.io/notes/Boostcourse-iOS-2-SignUp-6/)
    7. [Gesture Recognizer](https://kyungminleedev.github.io/notes/Boostcourse-iOS-2-SignUp-7/)



<br/><br/><br/>

# 참고 문서/링크

## 2. 회원가입 화면 구현

### 참고 문서

> 부스트코스에서 중요도 순으로 읽기 순서를 표시하여 개요를 한국어로 번역해두었다.
순서에 따라 원문을 꼭 읽어보자!

- [Human Interface guidelines for iOS](https://github.com/KyungminLeeDev/BoostCourse_iOS_Examples/blob/master/Documents/document_human_interface_guidline_for_iOS.pdf)
- [View Controller Catalog for iOS](https://github.com/KyungminLeeDev/BoostCourse_iOS_Examples/blob/master/Documents/document_view_controller_catalog_for_iOS_1.pdf)
- [App Programming Guide for iOS](https://github.com/KyungminLeeDev/BoostCourse_iOS_Examples/blob/master/Documents/document_app_programming_guide_for_iOS.pdf)
- [Cocoa Core Competencies](https://github.com/KyungminLeeDev/BoostCourse_iOS_Examples/blob/master/Documents/document_cocoa_core_competencies.pdf)

### 참고 링크

> 1. Human Interface Guidelines 

- [iOS Human Interface Guidelines](https://developer.apple.com/design/human-interface-guidelines/ios/overview/themes/)

> 2. 화면의 전환 - 2.1. 내비게이션 인터페이스란?

- [View Controller Catalog for iOS - 1 [Navigation Controllers] ](https://developer.apple.com/library/archive/documentation/WindowsViews/Conceptual/ViewControllerCatalog/Introduction.html)
    - PDF의 문서읽기 순서에 따라 꼭 읽고 이해하자.
- [Navigation - App Architecture - iOS Human Interface Guidelines](https://developer.apple.com/design/human-interface-guidelines/ios/app-architecture/navigation/)
- [View Controller Catalog for iOS - Navigation Controllers](https://developer.apple.com/library/archive/documentation/WindowsViews/Conceptual/ViewControllerCatalog/Chapters/NavigationControllers.html)
- [UINavigationBar - UIKit - Apple Developer Documentation](https://developer.apple.com/documentation/uikit/uinavigationbar)
- [UINavigationController - UIKit - Apple Developer Documentation](https://developer.apple.com/documentation/uikit/uinavigationcontroller)

> 2. 화면의 전환 - 2.1. 모달이란?

- [H.I.G - Modality](https://developer.apple.com/design/human-interface-guidelines/ios/app-architecture/modality/)
- [View Controller Programming Guide for iOS: Presenting a View Controller](https://developer.apple.com/library/archive/featuredarticles/ViewControllerPGforiPhoneOS/PresentingaViewController.html)

> 3. 뷰의 상태변화 감지

- [UIViewController - UIKit](https://developer.apple.com/documentation/uikit/uiviewcontroller)

> 4. Delegation

- [Delegation](https://docs.swift.org/swift-book/LanguageGuide/Protocols.html#//apple_ref/doc/uid/TP40014097-CH25-ID276)
- [Using Swift with Cocoa and Objective-C : Adopting Cocoa Design Patterns - Delegation](https://developer.apple.com/documentation/swift/cocoa_design_patterns#//apple_ref/doc/uid/TP40014216-CH7-ID8)

> 5. Singleton

- [Singleton - Apple Developer](https://developer.apple.com/library/archive/documentation/General/Conceptual/DevPedia-CocoaCore/Singleton.html)
- [Cocoa Design Patterns](https://developer.apple.com/documentation/swift/cocoa_design_patterns#//apple_ref/doc/uid/TP40014216-CH7-ID177)
- [UIStackView - UIKit](https://developer.apple.com/documentation/uikit/uistackview)

> 6. Target-Action

- [Target-Action](https://developer.apple.com/library/archive/documentation/General/Conceptual/Devpedia-CocoaApp/TargetAction.html)
- [UIControlEvents](https://developer.apple.com/documentation/uikit/uicontrolevents)
- [UIControl](https://developer.apple.com/documentation/uikit/uicontrol)
- [Controls](https://developer.apple.com/design/human-interface-guidelines/ios/controls/buttons/)
- [UIDatePicker](https://developer.apple.com/documentation/uikit/uidatepicker)
- [Date](https://developer.apple.com/documentation/foundation/date)
- [DateFormatter](https://developer.apple.com/documentation/foundation/dateformatter)
- [Introduction to Data Formatting Programming Guide For Cocoa](https://developer.apple.com/library/archive/documentation/Cocoa/Conceptual/DataFormatting/DataFormatting.html#//apple_ref/doc/uid/10000029i)
- [NSDateFormatter and Internet Dates](https://developer.apple.com/library/archive/qa/qa1480/_index.html)
- [About Internationalization and Localization](https://developer.apple.com/library/archive/documentation/MacOSX/Conceptual/BPInternational/Introduction/Introduction.html#//apple_ref/doc/uid/10000171i)


> 7. Gesture Recognizer

- [UIGestureRecognizer](https://developer.apple.com/documentation/uikit/uigesturerecognizer)
- [Gesture - User Interaction](https://developer.apple.com/design/human-interface-guidelines/ios/user-interaction/gestures/)
- [About Text Handling in iOS](https://developer.apple.com/library/archive/documentation/StringsTextFonts/Conceptual/TextAndWebiPhoneOS/Introduction/Introduction.html#//apple_ref/doc/uid/TP40009542)
- [UITextField](https://developer.apple.com/documentation/uikit/uitextfield)
- [UIResponder](https://developer.apple.com/documentation/uikit/uiresponder)
- [Using Responders and the Responder Chain to Handle Events](https://developer.apple.com/documentation/uikit/touches_presses_and_gestures/using_responders_and_the_responder_chain_to_handle_events)
- [Responder Object](https://developer.apple.com/library/archive/documentation/General/Conceptual/Devpedia-CocoaApp/Responder.html)
