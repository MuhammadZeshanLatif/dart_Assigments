void main() {
  student std=student();
  std.age=12;
  std.name="Zeeshan";
  std.displayInfo();
}

// Use of mixin in dart
mixin Person {
  String? name;
  int? age;
  displayInfo() {
    print("The name of person is $name and age is $age");
  }
}

class student with Person {
  
}
