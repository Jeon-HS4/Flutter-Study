// 4. Class

// Dart에서의 class는 다른 객체 지향의 class와 유사하게 사용 가능
// 추상 클래스는 자식 클래스에서 사용할 수 있는 기본적인 메서드 및 매개변수를 정의한 클래스
// extends를 통해 해당 클래스를 상속받을 수 있다.
abstract class Human{
  void walk();
}


// 미리 정의한 변수 내부에서 설정 가능하도록 하는 설정
enum Team {red, blue}

class Player extends Human{
  String name;
  int xp;
  String team;
  
  Player({required this.name, required this.xp, required this.team});

  void walk(){
    print('im walking');
  }

  void sayHello(){{
    print('Hi my name is $name');
  }}
}


void main(){
    // var player = Player(name: "name", xp: 1200, team: "red");
    // player.name = 'blas';
    // player.xp = 1200000;
    // player.team = 'reda';

    // 내부 변수를 바꿀 때, 세미콜론을 지우고, ..변수 식으로 바로 객체 내부의 변수를 바꿀 수 있음
    var player = Player(name: "name", xp: 1200, team: "red")
    ..name = 'blas'
    ..xp = 1200000
    ..team = 'reda'
    ..sayHello();
}