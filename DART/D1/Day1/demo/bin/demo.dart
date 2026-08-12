/*
Datatypes & variables
Constants (final / const)
print + string interpolation
operators
type conversion
User input
string methods
Regex
if/else
assert
ternary operator
loops
 */

import 'dart:io'; //input output

void main() {
  /*
  AOT (Ahead of Time) code -> IR -> machine code -> exec file
  JIT (Just in Time) code -> IR (kernel) -> hot code -> machine code -> store (cach) -> run
   */
  print("hello");
  /*
  Primitives
  String
  bool
  num -> int , double
  Data-Structures: collections
  List
  Map
  Set
  Iterable
  Special core:
  Object -> parent of all data types
  Null
  dynamic
  Function
  void
  Advanced:
  Future
  Enum
  Stream
   */

  /*
  //VARIABLES
  String name = "ahmed";
  // name = 4; error
  num number = 4;
  number = 5.5;
  double num1 = 3.3;
  num1 = 10;
  print(num1);
  int num2 = 2;
  // num2 = 4.6; error
  bool flag;
  flag = false;
  var v = 5; //type inference
  // v = "ali";
  dynamic d;
  d = "alaa";
  d = 5;

  //CONST vs. FINAL
  const c = 8; //compile-time constant
  final f; //run-time constant
  f = "";
  const PI = 3.14;
  // c = 5; error
  // f = 6; error
  print('my const value is $c');
  print('my const value is ${num1 + num2}');
  //OPERATORE
  //ARITHMITIC OPERATORS
  // + , - , * , / , % , ~/ (int division)
  double n = 20;
  int n2 = 10;
  print("${n ~/ n2}");

  //RELATIONAL OPERATORS
  //==, >= , <= , !=
  //LOGICAL OPERATORS
  //&& , || , !
  //UNARY OPERATORS
  //++ , --
  var u = 5;
  var iU = u++;
  print(iU);
  //TYPE TEST OPERATORS
  //is , is!
  print(u is! String);
  //NULL AWARE OPERATIONS 2.12
  /*
  ?? null-coalasing operator
  ?. null-aware access operator
  ??= null-aware assignment operator
  ! null assertion operator
   */

  //TYPE CONVERSION METHODS
  int I = 3;
  double D = -2.5999999;
  String S = "true";

  print(I.toDouble());
  print(D.toInt());
  print(D.round());
  print(D.floor());
  print(D.ceil());
  print(D.toStringAsFixed(2));
  var intStr = int.tryParse(S);
  print(intStr);
  print(intStr is int);
  print(intStr.runtimeType);
  var doubleStr = double.tryParse(S);
  print(doubleStr);
  print(doubleStr is int);
  print(doubleStr.runtimeType);
  print(bool.tryParse(S));
  print(flag.toString().runtimeType);
  print(I.toString().runtimeType);
  print(D.toString().runtimeType);

  */

  //USER INPUT
  /*
  print("enter your first name"); //String String?
  String firstName = stdin.readLineSync().toString().toLowerCase();
  print("enter your last name");
  String lastName = stdin.readLineSync().toString().toLowerCase();
  // print(firstName);
  // print(firstName.length);
  // print(firstName.isNotEmpty);
  // //STRING METHODS
  // print(firstName.toUpperCase());
  // print(firstName.trim());
  // greater than -> 1 , equal -> 0 , less than -> -1
  // print(10.compareTo(5));
  print(firstName.compareTo(lastName));
  //ahmed | ali -> -1
  print(firstName.replaceAll("m", "_"));
  print(firstName.replaceFirst("m", "_"));
  print(firstName.substring(2, 4)); //mohammed
  print(firstName.startsWith("mo"));
  print(firstName.indexOf("e"));
  print(firstName.indexOf("m"));
  print(firstName.lastIndexOf("m"));
  print(firstName.padRight(10, "_"));
  print(firstName.codeUnitAt(1));
  // print(firstName[0] = "d");
  */

  //Regular Expressions
  //a pattern used to match , search or validate text
  //r'' indicates row string   \n  , \s ,
  RegExp pattern = RegExp(r'[0-9]+');
  String txt = "my age is 25 and sister is 40";

  print(pattern.hasMatch(txt));
  var matches = pattern.allMatches(txt);
  print(matches);

  for (var match in matches) {
    //group(0) -> everything matched
    //group(1) -> first captured match
    //group(2) -> second captured match
    print(match.group(0));
  }
  //Validation
  RegExp numbersOnly = RegExp(r'^[0-9]+$'); //string is d from 0 to 9
  print(numbersOnly.hasMatch("12345"));
  print(numbersOnly.hasMatch("1d  5"));
  //\d
  RegExp phoneNumber = RegExp(r'^[0-9]{8}$');
  print(phoneNumber.hasMatch("33456789"));

  RegExp name = RegExp(r'^[a-zA-Z]{3,}$');
  print(name.hasMatch("May"));

  RegExp email = RegExp(r'^([\w.-]+)@([\w.-]+)\.[a-zA-Z]{2,}$');
  print(email.hasMatch("shahd22@gmail.com"));

  var match = email.firstMatch("shahd22@gmail.com");
  //capturing groups
  print(match?.group(0)); //everything matches
  print(match?.group(1)); //first matching group
  print(match?.group(2)); //second matching group

  var mail = "shahd22@gmail.com";
  print(mail.replaceAll(RegExp(r'[0-9]'), "*"));

  //IF CONDITION
  /*
  if(condition){
  //code
  }else{
  code
  }else if{
  code
  }
   */

  //ASSERT
  int age = 15;
  //assert(condition, message) تأكيد
  if (age >= 18) {
    print("adult");
  } else if (age < 18) {
    print("minor");
  } else {
    print("unknown");
  }
  //ignore
  assert(age >= 18, "age must be greater than or equal 18");

  //Ternary Operator
  var flag = age >= 18 ? "adult" : "minor";

  //LOOPS
  /*
  for(int i =0 ; i< 100 ; i++){
  code
  }

  while(condition){
 while condition is true code inside executes
  }

  do{code}while(condition){
  while condition is true code inside executes
  }
   */
}
