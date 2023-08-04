// 1.Create a class Shape with a property name and a method void printName(). This class will serve as the base class for various shapes.
import 'dart:math';

class Shape {
  String? name;
  void printName(String name) {
    this.name = name;
    print("Name : $name");
  }
}

// 2.Create a mixin ColorMixin with a property color and a method void printColor(). This mixin will add color functionality to shapes.
mixin ColorMixin {
  String? color;
  void printColor(String color) {
    this.color = color;
    print("Color:$color");
  }
}
// 3.Create a mixin AreaMixin with a method double calculateArea(). This mixin will add area calculation functionality to shapes.
mixin AreaMixin {
  double? calculateArea() {}
}

// 4.Create two classes Circle and Rectangle that extend the Shape class and use the ColorMixin and AreaMixin mixins appropriately. Implement necessary properties and methods for each shape.
class Circle extends Shape with ColorMixin, AreaMixin {
  double? radius;
  calculateRadius(double radius) {
    this.radius = radius;
    print("Radius:$radius");
  }
  @override
  calculateArea() { 
     return 3.14159 * radius! * radius!;
  }
  
}

class Rectangle extends Shape with ColorMixin, AreaMixin {}
// 5.In the main function, create an instance of Circle and an instance of Rectangle. Set their properties and demonstrate the use of methods from both the Shape class and the mixins.

// 6.Your implementation should showcase the use of mixins to add functionality to classes.

// 7.Remember to include appropriate data types, access modifiers, and comments to explain your code.

// Sample Output:


// Circle:
// Name: Circle
// Color: Red
// Radius: 5.0
// Area: 78.54

// Rectangle:
// Name: Rectangle
// Color: Blue
// Width: 4.0
// Height: 6.0
// Area: 24.0





