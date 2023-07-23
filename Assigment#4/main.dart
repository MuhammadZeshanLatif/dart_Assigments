// import 'dart:io';
import 'dart:math';
// Map teacherMap = {};
// Map teacherDetail = {};
// Map studentMap = {};
// Map studentDetail = {};
// Map passwordsMap = {};
// int counts = 0;
// int count = 0;
// void main() {
//   if (counts == 0) {
//     print("""=====================================================
// |                                                   |
// |              Welcom To Quaid Academy              |
// |                                                   |
// =====================================================""");
//     counts++;
//   }
//   print("=======x=====x======x========");
//   print("""Press 1 for LogIn.
// Press 2 for SignUp.
// Press any other key to exit""");
//   var userInput = stdin.readLineSync();
//   if (userInput == "1") {
//     LogIn();
//   } else if (userInput == "2") {
//     signUp();
//   } else {
//     Exit();
//   }
// }

// LogIn() {
//   bool islogin = true;
//   while (islogin) {
//     print("Enter Your Unique identity Name OR Enter 0 to Exit program");
//     var userName = stdin.readLineSync();
//     if (userName == "0") {
//       Exit();
//     }
//     print("Enter Password OR Enter 0 to Exit program");
//     var password = stdin.readLineSync();
//     if (userName == "0") {
//       Exit();
//     }
//     if (passwordsMap.containsKey(userName) ==
//         passwordsMap.containsValue(password)) {
//       if (teacherMap.containsKey(userName)) {
//         bool isTrue = true;
//         print("""=====================================================
// |                                                   |
// |     Welcome $userName in Teacher Dashboard 🤍       |
// |                                                   |
// =====================================================""");
//         while (isTrue) {
//           print(
//               "Press 1 to view students detail.\nPress 2 to add student.\nPress 3 for delete student.\nPress 4 to see your detail.\nPress 5 to edit student detail.\nPress 6 to search student.\nPress any other key to LogOut.");
//           var detail = stdin.readLineSync();
//           if (detail == "1") {
//             showStudentsDetail();
//           } else if (detail == "2") {
//             studentSignUp();
//           } else if (detail == "3") {
//             deletStudent();
//           } else if (detail == "4") {
//             print("=========================");
//             teacherMap[userName].forEach((key, val) => {print("$key : $val")});
//             print("=========================");
//           } else if (detail == "5") {
//             editStudentDetail();
//           } else if (detail == "6") {
//             viewStudent();
//           } else {
//             main();
//             isTrue = false;
//           }
//         }
//         islogin = false;
//       } else if (userName == "Admin" && password == "Admin") {
//         bool isTrue = true;
//         print("""=====================================================
// |                                                   |
// |             Welcom to Admin Dashboard 🤍          |
// |                                                   |
// =====================================================""");
//         while (isTrue) {
//           print(
//               "Press 1 to view teachers detail.\nPress 2 to view students detail.\nPress 3 to add teacher.\nPress 4 to add student.\nPress 5 for delete teacher record.\nPress 6 for delete student.\nPress 7 to edit teacher detail.\nPress 8 to edit student detail.\nPress 9 to search Teacher.\nPress 10 to search student.\nPress any other key to LogOut.");
//           var detail = stdin.readLineSync();
//           if (detail == "1") {
//             showTeachersDetail();
//           } else if (detail == "2") {
//             showStudentsDetail();
//           } else if (detail == "3") {
//             teacherSignUp();
//           } else if (detail == "4") {
//             studentSignUp();
//           } else if (detail == "5") {
//             deletTeacher();
//           } else if (detail == "6") {
//             deletStudent();
//           } else if (detail == "7") {
//             editTeacherDetail();
//           } else if (detail == "8") {
//             editStudentDetail();
//           } else if (detail == "9") {
//             viewTeacher();
//           } else if (detail == "10") {
//             viewStudent();
//           } else {
//             main();
//             isTrue = false;
//           }
//         }
//         islogin = false;
//       } else if (studentMap.containsKey(userName)) {
//         bool isTrue = true;
//         print("""=====================================================
// |                                                   |
// |       Welcome $userName to Student Dashboard          |
// |                                                   |
// =====================================================""");
//         while (isTrue) {
//           print("Press 1 to view your detail.\nPress any other key to LogOut.");
//           var detail = stdin.readLineSync();
//           if (detail == "1") {
//             print("=========================");
//             studentMap[userName].forEach((key, val) => {print("$key : $val")});
//             print("=========================");
//           } else {
//             main();
//             isTrue = false;
//           }
//           islogin = false;
//         }
//       } else {
//         print("===========Please Enter Valid Id or Password==============");
//       }
//     } else {}
//   }
// }

// signUp() {
//   print(
//       "Press 1 to SignUp As a Teacher.\nPress 2 to SignUp As a Student.\nPress any other key to exit program");
//   var Input = stdin.readLineSync().toString().toUpperCase();
//   if (Input == "1") {
//     teacherSignUp();
//     main();
//   } else if (Input == "2") {
//     studentSignUp();
//     main();
//   } else {
//     print("You are exit");
//   }
// }

// teacherSignUp() {
//   bool IsBool = true;
//   while (IsBool) {
//     print("Enter User Name as Unique identity.");
//     String userName = stdin.readLineSync().toString();
//     if (teacherMap.containsKey(userName) || userName == "Admin") {
//       print(
//           "The user $userName is already exist please enter name with special character or number like '$userName'123 OR\nPress 0 to exit");
//       if (userName == "0") {
//         Exit();
//       }
//     } else {
//       print("Enter your full name.");
//       teacherDetail["Name"] = stdin.readLineSync();
//       print("Enter Your Father Name.");
//       teacherDetail["Father"] = stdin.readLineSync();
//       print("Enter Your Date of birth.");
//       teacherDetail["D.O.B"] = stdin.readLineSync();
//       print("Enter Your contact Number.");
//       teacherDetail["Contact"] = stdin.readLineSync();
//       print("Enter Subject Name.");
//       teacherDetail["Subject"] = stdin.readLineSync();
//       print("Enter any code which you want your account password to be.");
//       passwordsMap[userName] = stdin.readLineSync();
//       teacherMap[userName] = teacherDetail;
//       teacherDetail = {};
//       print("$userName added as teacher");
//       IsBool = false;
//     }
//   }
// }

// studentSignUp() {
//   bool IsBool = true;
//   while (IsBool) {
//     //print("Enter User Name as Unique identity.");
//     var userName = "Khali";
//     if (studentMap.containsKey(userName) || userName == "Admin") {
//       print(
//           """The user $userName is already exist please enter name with special character or number like Noman123 OR
//             Press 0 to exit the program""");
//       if (userName == "0") {
//         Exit();
//       }
//     } else {
//       //print("Enter User Name as Unique identity.");
//       int rollNo = count++;
//       print("Enter your full name.");
//       studentDetail["Name"] = stdin.readLineSync();
//       print("Enter Your Father Name.");
//       studentDetail["Father"] = stdin.readLineSync();
//       print("Enter Your Date of birth.");
//       studentDetail["D.O.B"] = stdin.readLineSync();
//       print("Enter Your contact Number.");
//       studentDetail["Contact"] = stdin.readLineSync();
//       print("Enter Class");
//       studentDetail["Class"] = stdin.readLineSync();
//       print("Enter any code which you want your account password to be.");
//       passwordsMap["2023$rollNo"] = stdin.readLineSync();
//       studentMap["2023$rollNo"] = studentDetail;
//       studentDetail = {};
//       IsBool = false;
//       print('__________________________________');
//       print(
//           "Student registerd successfull.Student roll number is 2023$rollNo use it as Unique identity for login.");
//       print('__________________________________');
//     }
//   }
// }

// showTeachersDetail() {
//   if (teacherMap.isNotEmpty) {
//     teacherMap.forEach((key, value) {
//       print("============Identity:$key============");
//       value.forEach((keys, values) {
//         print("$keys : $values");
//       });
//     });
//   } else {
//     print("=====================================");
//     print("No any Teacher enrolled.");
//   }
//   print("=====================================");
// }

// showStudentsDetail() {
//   if (studentMap.isNotEmpty) {
//     studentMap.forEach((key, value) {
//       print("============Identity OR Roll Number:$key============");
//       value.forEach((keys, values) {
//         print("$keys : $values");
//       });
//     });
//   } else {
//     print("=====================================");
//     print("No any student enrolled.");
//   }
//   print("=====================================");
// }

// deletTeacher() {
//   print("Please enter teacher identity for delete teacher data.");
//   var teacherDelete = stdin.readLineSync();
//   passwordsMap.remove(teacherDelete);
//   teacherMap.remove(teacherDelete);
//   print("$teacherDelete is deleted from list of teacher.");
// }

// deletStudent() {
//   print("Please enter student roll number for delete student data.");
//   var studentDelete = stdin.readLineSync();
//   studentMap.remove(studentDelete);
//   passwordsMap.remove(studentDelete);
//   print('__________________________________');
//   print(
//       "Student heaving roll num $studentDelete is deleted from student list.");
//   print('__________________________________');
// }

// editTeacherDetail() {
//   print("Enter Name of teacher.");
//   bool flag = true;
//   while (flag) {
//     var userName = stdin.readLineSync();
//     if (teacherMap.containsKey(userName)) {
//       bool isTrue = true;
//       print("This is $userName detail.");
//       teacherMap[userName].forEach((key, val) => {print("$key : $val")});
//       print("=========================");
//       print("Write The parameter which you want to edit in teacher detail.");
//       while (isTrue) {
//         var edit = stdin.readLineSync();
//         if (edit == "0") {
//           isTrue = false;
//         } else {
//           print("Write value against $edit");
//           teacherMap[userName][edit] = stdin.readLineSync();
//           print("In $edit Edtion is Done.");
//           print(
//               "Write down another parameter if you want to edit in teacher detail\nPress 0 if you done edition.");
//         }
//       }
//       flag = false;
//     } else if (userName == "0") {
//       flag = false;
//     } else {
//       print(
//           "Teacher with name $userName is not exit in teacher list.Enter Agian teacher name.\n Press 0 to exit.");
//     }
//   }
// }

// editStudentDetail() {
//   print("Enter Roll number of student.");
//   bool flag = true;
//   while (flag) {
//     var userName = stdin.readLineSync();
//     if (studentMap.containsKey(userName)) {
//       bool isTrue = true;
//       print("This is the detail of student heaving roll number $userName.");
//       studentMap[userName].forEach((key, val) => {print("$key : $val")});
//       print("=========================");
//       print("Write The perimetr which you want to edit in Student detail.");
//       while (isTrue) {
//         var edit = stdin.readLineSync();
//         if (edit == "0") {
//           isTrue = false;
//         } else {
//           print("Write value against $edit");
//           studentMap[userName][edit] = stdin.readLineSync();
//           print("In $edit Edtion is Done.");
//           print(
//               "Write down another perimetr if you want to edit in Student detail\nPress 0 if you done edition.");
//         }
//       }
//       flag = false;
//     } else if (userName == "0") {
//       flag = false;
//     } else {
//       print(
//           "Student heaving roll number $userName is not exit in student list.Enter Agian valid roll number.\n Press 0 to exit.");
//     }
//   }
// }

// viewTeacher() {
//   print("Enter Name of teacher.");
//   bool flag = true;
//   while (flag) {
//     var userName = stdin.readLineSync();
//     if (teacherMap.containsKey(userName)) {
//       print("This is $userName detail.");
//       teacherMap[userName].forEach((key, val) => {print("$key : $val")});
//       print("=========================");
//       flag = false;
//     } else if (userName == "0") {
//       flag = false;
//     } else {
//       print(
//           "Teacher with name $userName is not exit in teacher list.Enter Agian teacher name.\n Press 0 to exit.");
//     }
//   }
// }

// viewStudent() {
//   print("Enter Roll number of student.");
//   bool flag = true;
//   while (flag) {
//     var userName = stdin.readLineSync();
//     if (studentMap.containsKey(userName)) {
//       print("This is the detail of student heaving roll number $userName.");
//       studentMap[userName].forEach((key, val) => {print("$key : $val")});
//       print("=========================");
//       flag = false;
//     } else if (userName == "0") {
//       flag = false;
//     } else {
//       print(
//           "Student heaving roll number $userName is not exit in student list.Enter Agian valid roll number.\n Press 0 to exit.");
//     }
//   }
// }
// marks(){
//  int randomNumber = Random().nextInt(61) + 40;
//  return randomNumber;
// }
// markSheet(){
//   print("""-------------------------------
//   |                              |
//   |                              |
//   |                              |
//   |                              |
//   |                              |
//   |                              |
//   |                              |
//   |                              |
//   |                              |
//   |                              |
//   |                              |
//   |                              |
//   |                              |
//   |------------------------------""");
// }

// Exit() {
//   print("You are exit");
//   exit(0);
// }
void main() {
  markSheet();
}

markSheet() {
  int isl = Random().nextInt(61) + 40;
  int eng = Random().nextInt(61) + 40;
  int chem = Random().nextInt(61) + 40;
  int phy = Random().nextInt(61) + 40;
  int math = Random().nextInt(61) + 40;
  int urdu = Random().nextInt(61) + 40;
  int comp = Random().nextInt(61) + 40;
  int total=
  print("""-----------------------------------
| | SUBJECR  : OBTAINED : TOTAL | |
| | NAME       MARKS      MARKS | |
|  -----------------------------  |          
|   Computer :  $comp      : 100     |      
|   English  :  $eng      : 100     |    
|   Islamiat :  $isl      : 100     |               
|   Urdu     :  $urdu      : 100     |               
|   Chemistry:  $chem      : 100     |            
|   Physics  :  $phy      : 100     |            
|   Math     :  $math      : 100     |            
|---------------------------------
|   Total    :
|---------------------------------|""");
}
