// 4. Class

// Dart에서의 class는 다른 객체 지향의 class와 유사하게 사용 가능
class Player{
  final String name;
  int xp;

  // Player 객체에 매개변수를 할당하는 코드
  // Player(String name, int xp){
  //   this.name = name;
  //   this.xp = xp;
  // }
  // late를 사용하지 않고, 들어온 순서대로 name, xp로 값 할당
  Player(this.name, this.xp);

  void sayHello(){{ // dart에서는 this. 을 붙이지 않아도 사용 가능
    print('Hi my name is $name');
  }}
}

class Player_new{
  final String name;
  int xp, age;
  String team;

  Player_new({
    required this.name,
    required this.xp,
    required this.team,
    required this.age,
  });

  // 생성자를 통해 특정 값만 입력 받은 상태로 생성하는 방식
  // : 뒤에 내부 파라미터에 대한 설정을 수행하면 됨
  Player_new.createBlueTeam({
  required String name,
  required int age
  }) : this.name = name,
  this.age = age,
  this.team = 'blue',
  this.xp = 0;

  // 한번에 합쳐서 생성을 수행할 수 있다
  Player_new.createRedTeam({
  required this.name,
  required this.age,
  this.xp = 0,
  this.team = 'red',
  });

}

void main(){
  var player = Player("HS", 1500);
  print(player.name);
  player.sayHello();
  var new_player = Player_new(name: 'wa', xp: 2110, team: 'red', age: 32);

  var redPlayer = Player_new.createRedTeam(name: "red", age: 14);
  var bluePlayer = Player_new.createBlueTeam(name: "Blue", age: 13);
}