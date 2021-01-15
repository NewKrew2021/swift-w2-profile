# swift-w2-profile
모바일 2주차 프로필 저장소

david의 README

### First Commit - 0111 18:00

- fork 및 clone
- KakaoProfile 프로젝트 생성
- TabBar Controller 추가
- 시뮬레이터 선택(iPhone 12 mini) 및 실행

![image-20210111175805578](/Users/ihochang/Library/Application Support/typora-user-images/image-20210111175805578.png)



### Second Commit - 0112 12:30

- InageView, Label, Button 추가

- ViewController에 IBOutlet으로 연결

- Label Text 추가, Label Attribute 변경

  ![image-20210112172559029](README.assets/image-20210112172559029.png)

  


### Third Commit - 0112 13:30

- Button을 ViewController에 IBAction으로 연결
- 추가한 IBAction에 몇가지 속성 변경 코드 추가

![image-20210112172627466](README.assets/image-20210112172627466.png)

### 4th Commit - 0112 17:30

- 새로운 ViewController Scene추가
- LoginViewController 생성
- 이전 Scene의 Edit 버튼과 새로 만든 Scene을 Segue로 연결
- 새로운 Scene에 Label, Button, TextEdit, 추가
- Cancel 버튼 기능 추가

![image-20210112172651243](README.assets/image-20210112172651243.png)

### commit : upload image in imageView

### commit : addProfileChangeButton

![image-20210113211523493](README.assets/image-20210113211523493.png)

### commit : UIImagePickerController - 0113 21:00

- declare a variable of instance of UIImagePickerController
- Edit View Controller adopts two protocols : UINavigationControllerDelegate, UIImagePickerControllerDelegate
- make IBAction of camera button that can configure and call UIImagePickerController
- add two methods
  1. imagePickerController
  2. imagePickerControllerDidCancel

![image-20210113211550266](README.assets/image-20210113211550266.png)



![image-20210113211603979](README.assets/image-20210113211603979.png)

### commit : Done Button

- make protocol : ProfileDoneDelegate
- delcare protocol variable in EditViewController
- make IBAction : doneButtonTouched
- ViewController adapts protocol : ProfileDoneDelegate
- ViewController implements method : UpdateProfile

### commit : Embed a Navigation Controller

- Embed a Navigation Controller in tem2

  ![image-20210114113241480](README.assets/image-20210114113241480.png)

  ### commit : make LoginViewController
  
  - make LoginViewController.swift
  - set the controller as the Cunstom class of Navigation Controller
  
  ![image-20210114114209776](README.assets/image-20210114114209776.png)
  
  ### commit : Add some elements
  
  - add Image
  - add TextField
  - add Button
  
  ![image-20210114134415515](README.assets/image-20210114134415515.png)
  
  ### commit : connect IBOutlet
  
  - messageImage
  - messageText : for setting zindex
  - inputId
  - inputPassword
  
  ### commit : make Main View
  
  - make Main View Controller Scene
  - make MainViewController.swift
  - set the controller as custom class
  - using segue, push MainView when the button touched
  
  ### commit : WKWebView
  
  - fulfill the MainViewController with WebKit WebView
  - using WKWebView object, present web page into app's UI
  
  ![image-20210114155057064](README.assets/image-20210114155057064.png)
  
  ![image-20210114155024508](README.assets/image-20210114155024508.png)
  
  ### commit : some modification
  
  - naviBar hidden on/off
  - add naviBar Title
  
  ![image-20210114170956500](README.assets/image-20210114170956500.png)
  
  ![image-20210114171002577](README.assets/image-20210114171002577.png)
  
  ### commit : modify the method that changes ViewController
  
  - change the method from segue to IBAction in order to implement the login logic

### commit : add Login Logic

- compare id and password with target string
- if valid, push MainViewController
- if not valid, present alert.
- set isSecureTextEntry property of inputPassword to true

![image-20210114175049648](README.assets/image-20210114175049648.png)

![image-20210114175055155](README.assets/image-20210114175055155.png)

### commit : modify : tab bar

- modify tab bar icon
- modify tab bar title

![image-20210114204930571](README.assets/image-20210114204930571.png)

### commit : Remake Login Logic

- make enum VaildateType
- make method : validateAccount()
- make method : ShowAlert

![image-20210114224813738](README.assets/image-20210114224813738.png)

![image-20210114224832715](README.assets/image-20210114224832715.png)

![image-20210114224848117](README.assets/image-20210114224848117.png)

![image-20210114224859609](README.assets/image-20210114224859609.png)

### commit : feedback -> modify

- early exit
- delete unused method
- remake useless hard codes
- call method of super class when overriding

### commit : Some Change

- make WEWebView
- connect the view using IBOutlet
- add back button in that WEWebView

![image-20210115201354912](README.assets/image-20210115201354912.png)

