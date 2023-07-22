class Person {
  //properties or fields
  String? name;
  String? complection;
  String? profession;
  int? age;
  //methods or functions
  void display() {
    print(
        "My  name is $name.\nI am $age years old.\nMy complection is $complection.\nBy profession i am a $profession.");
  }
}
 class BiCycle{
  String? color;
  int? size;
  int? currentSpeed;
  void display(int speed){
    currentSpeed=speed;
  }
  void show(){
    print("Color of my biCycle is $color.\n It is $size cm in size.\n its speed is $currentSpeed");
  }
 }