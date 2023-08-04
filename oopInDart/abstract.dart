void main(){
  Teacher tc=Teacher();
  tc.display("zeeshan");
}
abstract class Person{
  String? name;
  void display(String name);
}
class Teacher extends Person{
  @override
  void display(String name) {
    this.name=name;
    print("Teacher name is $name");
  }

}