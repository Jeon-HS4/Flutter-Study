// 3. Function

String sayHello(String name){
  return 'Hello $name nive to meet you!';
}

String sayHello_arrow(String name) => 'Hello $name nive to meet you!';
// fat arrow syntax

num plus(num a, b) => a+b;

// name argument
// 보통 함수 인자를 전달할 때, 파라미터 순서대로 전달하지만, 대신 파라미터 명으로 전달 가능하도록 하는 방식
String name_argument(String name, int age, String country){
  return "Hello $name, you are $age, and you come from $country";
}
// 사용할 때, 사용자가 입력을 안하는 것을 방지하기 위해서 방지 조치
// 1. 매개변수에 default value 지정
String name_argument_default({String name = 'anon', int age=0, String country='global'}){
  return "Hello $name, you are $age, and you come from $country";
}
// 2. required 지정
// required를 쓰면 해당 부분이 입력되지 않으면 오류를 표시
String name_argument_required({
  required String name,
  required int age,
  required String country}){
  return "Hello $name, you are $age, and you come from $country";
}

// Parameter => positional / named
// positional은 기본적인 파라미터를 의미
// named는 위에서 사용한 name argument를 의미


// Optional Positional Parameters
// 필수적으로 사용하지 않을 변수는 [  ]로 묶어둬서 optional 파라미터로 변경 가능
// 이때 해당 변수는 Nullable 설정을 하려면 String?으로 설정
String name_argument_optional(String name, int age, [String? country = 'global']){
  return "Hello $name, you are $age, and you come from $country";
}

// QQ Operator
// Python에서 ? 연산자와 유사하게 사용 가능
// ??은 null이 아닐경우 좌항, null일경우 우항을 실행한다고 생각하면 됨.
String capitaloizeName(String? name){
  if(name != null){
    return name.toUpperCase();
  }
  return "ANON";
}

// Typedef
// 자료형 선언
typedef UserInfo = Map<String, String>;
String sayHi(UserInfo userInfo){
  return "Hi ${userInfo['name']}";
}

void main(){
  print(sayHello('hs'));
  print(name_argument_default(
    age: 12, 
    country: 'korea', 
    name: 'HS'));

  print(name_argument_optional('HS', 12));

}