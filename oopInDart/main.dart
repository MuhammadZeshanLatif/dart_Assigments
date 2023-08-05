void main() {
  displayAll dis=displayAll();
  dis.displayAllLines("Zeeshan", 22, "Fair");
}

mixin Name {
  String? name;
}
mixin Age {
  int? age;
}
mixin Color {
  String? color;
}

abstract class Display with Name, Age {
  _display(String namer, int ager);
}

class displayAll extends Display with Color {
  _display(String namer, int ager) {}
  displayAllLines(String namer, int ager,String color){
    this.name = namer;
    this.age = ager;
    this.color=color;
    print("Name:$namer \n Age:$ager\nColor:$color");
  }
}
