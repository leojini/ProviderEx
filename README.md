![image](https://github.com/leojini/ProviderEx/assets/17540345/8142f352-0c99-4c42-b507-e86bb7d490b9)

![image](https://github.com/leojini/ProviderEx/assets/17540345/9d25fee0-2a9d-45a8-8734-5ca6270d28fc)



Provider 예제

1. 언어: Dart, Flutter

2. main.dart: MultiProvider를 통해 생성
  
  ![image](https://github.com/leojini/ProviderEx/assets/17540345/7885fd5d-888f-48f5-a625-8eb75c11aafc)

3. global_store.dart: 전역 데이터 저장을 위한 클래스 정의한다. ChangeNotifier를 확장해서 생성해야 한다.

  ![image](https://github.com/leojini/ProviderEx/assets/17540345/50b85344-4b23-4655-9723-0499ac4a40ad)

4. GlobalStore에 저장된 값으로 Text 설정
  
  ![image](https://github.com/leojini/ProviderEx/assets/17540345/16fbdb23-b528-489e-9689-9c45ce31ff12)

5. response_child.dart: GlobalStore에 저장된 httpResponseData의 데이터가 있을 경우 보여준다.

   ![image](https://github.com/leojini/ProviderEx/assets/17540345/2717cc76-3ac1-4d46-bee0-e5bb631be9a3)


