import 'dart:io';

void main(){
 //Assigment No 2
 //Q.1
 print("=============Question#1===============");
 List<String> names=["Zeeshan","Faizan","Sameer","Wakeel","Ijaz","Furqan"];
 for(var i=0;i<names.length;i++){
  print(names[i]);
 }
 print("=============Question#2===============");
//Q.2
List days=[];
days.add("Monday");
days.add("Tuesday");
days.add("Wednesday");
days.add("Thursday");
days.add("Friday");
days.add("Seturday");
days.add("Sunday");
for(var i=0;i<days.length;i++){
  print(days[i]);
}
print("=============Question#3===============");
 List dayNames=["Monday","Tuesday","Wednesday","Thursday","Friday","Seturday","Sunday"];
for(var i =0;i<7;i++){
  dayNames.removeLast();
}
 print(dayNames);
 }