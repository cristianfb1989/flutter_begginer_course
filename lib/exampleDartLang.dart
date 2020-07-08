void main() {
  int x = 23;
  print(x);
  String name = "Cristian";
  double number = 3.0;
  bool student = true;
  var male = "true";
  const surname = "Bustos";
  //surname = "Iglesias";
  x = 46;
  int y = 45;
  String secondName = "Fabian";
  bool birthday = false;
  int numberInt = 3;
  List<int> myList = [
    4,
    5,
    6,
  ];
  List<String> names = [
    "Cristian",
    "Fabian",
  ];

  List<dynamic> differentTypes = [
    true,
    30,
    "Cristian",
  ];

  Map<String, dynamic> personas = {
    "Cristian": 20,
    "Fabian": "Hombre",
    "Bustos": true
  };

  //var lessie = Pet("Lessie", 3);
  // lessie.name = "Lessie";
  // lessie.age = 3;

  //var whiskas = Pet("Whiskas", 5);
  // whiskas.name = "Whiskas";
  // whiskas.age = 5;

  var lessie = Pet();
  lessie.age = 4;
  lessie.name = "Lessie";

  print("Hi!");
  print("Hi2!");
  print(x);
  print(name);
  print(number);
  print(student);
  print(male);
  print(surname);
  print(x + y);
  print(name + secondName);
  print("Cristian" + secondName + "dice Hola!");
  print("Cristian $secondName dice Hola!");
  print("Cristian secondName dice Hola!");
  if (birthday) {
    print('Feliz Cumple!');
  } else {
    print("Not Today");
  }

  if (numberInt >= 2) {
    print("bigger or equal 2");
  } else if (number >= 5) {
    print("bigger or equal 5");
  } else if (number >= 10) {
    print("bigger or equal 10");
  } else if (number >= 15) {
    print("bigger or equal 15");
  } else {
    print("nothing");
  }
  saysHi();
  sayHi(name);
  sayHi("Fabian");
  add(2, 3);
  print(addOperator(3, 4) + 4);
  rest(3, 2);
  print(restReturn(3, 2));
  print(myList[0]);
  print(myList[1]);
  print(myList[2]);
  print(names[0]);
  print(names[1]);
  print(differentTypes[0]);
  print(differentTypes[1]);
  print(differentTypes[2]);
  for (int i = 0; i < 2; i++) {
    print("loop");
  }
  for (int i = 0; i < 2; i = i + 1) {
    print("loop 2");
  }

  for (int i = 0; i < names.length; i++) {
    print(names[i]);
  }

  // print(lessie.name);
  // print(lessie.age);

  // print(whiskas.name);
  // print(whiskas.age);

  // print(lessie.name);
  // print(lessie.age);
  // lessie.bark();

  print(lessie.age);
  lessie.hasBirthday();
  print(personas["Cristian"]);
  print(personas["Fabian"]);
  print(personas["Bustos"]);
}

void saysHi() {
  print("Hi!");
}

void sayHi(String name) {
  print("Hi $name");
}

void add(int x, int y) {
  print(x + y);
}

int addOperator(int x, int y) {
  return x + y;
}

void rest(int x, int y) => print(x - y);

int restReturn(int x, int y) => x - y;

class Pet extends Animal {
  String name;
  void hasBirthday() {
    super.hasBirthday();
    print(name);
  }
  //int age;

  // Pet(String name, int age) {
  //   this.name = name;
  //   this.age = age;
  // }

  // Pet(this.name, this.age);

  // void bark() {
  //   print("Wuff");
  // }
}

class WildLifeAnimal extends Animal {}

class Animal {
  int age;
  void hasBirthday() {
    print("Happy birthday!");
  }
}
