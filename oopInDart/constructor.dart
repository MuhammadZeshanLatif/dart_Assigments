class Student{
  //Thes are the properties or fields of Student object
  String? name;
  String? adress;
  double? age;
  int?roll;
  //here we are making a cunstor with same name as class with out any return type like voide public etc.
  Student(String myName,String myAdress,double myAge,int myRoll){
      this.name=myName;
      this.adress=myAdress;
      this.age=myAge;
      this.roll=myRoll;
  }

}
 class Home{
  String? name;
  double? area;
  String? color;

  Home(this.name,this.area,this.color);
  void detail(){
    print("Color Name");
  }
 }