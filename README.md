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