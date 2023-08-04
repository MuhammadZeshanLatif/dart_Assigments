import 'dart:svg';

import 'constructor.dart';
 void main(){
  Student std=Student("Zeeshan", "Karachi", 20, 304);
  print(std.name);
  print(std.adress);
  print(std.age);
  print(std.roll);
}
 
// Use of mixin in dart
mixin Person{
  String? name;
  Number? age;
  displayInfo(){
    print("The name of person is $name and age is $age");
  }
}
class student with Person{
   @override
  displayInfo() {
  
   return super.displayInfo();
  }
}