# swift-w2-profile by herb.salt
모바일 2주차 프로필 저장소

1. make project (20.01.11 17:30)
 - fork, clone
 - KakaoProfile 프로젝트 생성
 
 2. add Tabbar Controller (20.01.11 18: 50)
- Tabbar Controller 추가, Initial View Controller로 지정
- 기본 View Controller(스토리보드에 있던) 삭제
- print(#file, #line, #function, #column) 실행 후 콘솔 출력문 확인

![screenshot 1](https://user-images.githubusercontent.com/28801805/104168650-b7e86400-5441-11eb-910e-5b0e592775ab.png)

3. make Label, ImageView, Button (20.01.012 13:00)
-  IBOutlet으로 label, imageView, button 연결
- IBAction으로 button 액션에 대한 메소드 구현

![Simulator Screen Shot - iPhone 11 - 2021-01-12 at 12 47 46](https://user-images.githubusercontent.com/28801805/104267394-e3685e80-54d4-11eb-876c-e25d04e6a1e2.png)
![Simulator Screen Shot - iPhone 11 - 2021-01-12 at 12 47 56](https://user-images.githubusercontent.com/28801805/104267396-e400f500-54d4-11eb-9f83-c330ec115861.png)

4. make LoginViewController
- LoginViewController 생성
- ViewController에서 prepare()로 LoginViewController에 데이터 전달
- LoginViewController에서 dismiss()로 모달 dismiss

![스크린샷 2021-01-12 오후 5 51 32(2)](https://user-images.githubusercontent.com/28801805/104291495-f09a4300-54fe-11eb-807b-d4bb08fc4c30.png)
![스크린샷 2021-01-12 오후 5 51 37(2)](https://user-images.githubusercontent.com/28801805/104291507-f2fc9d00-54fe-11eb-9a4e-3d3898eddd58.png)

5. make func selectImageButtonTouched
- selectImageButtonTouched 함수 생성
- delegate를 이용해 ViewController로 데이터(String, String, UIImage) 전달

![Simulator Screen Shot - iPhone 11 - 2021-01-13 at 19 10 16](https://user-images.githubusercontent.com/28801805/104438485-6374ee00-55d3-11eb-8d4e-22fba81f61c6.png)
![Simulator Screen Shot - iPhone 11 - 2021-01-13 at 19 10 29](https://user-images.githubusercontent.com/28801805/104438486-64a61b00-55d3-11eb-96fc-f0874d72ab59.png)
