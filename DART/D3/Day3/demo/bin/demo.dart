import 'package:demo/banking_system.dart';

void main() {
  /*
  //sound null-safety V2.12
  //let x = null;
  //int a; //non-nullable int
  int? a; //nullable int
  print(a);

  String? name = getUserName(); //String | null
  print(name);
  //Safe Access
  print(name?.length);
  //null-assertion operator
  print(name!.length); // -> I am sure name is not null
  //null-coalseing operator
  //String? username = name == null ? "guest" : getUserName();
  String username = getUserName() ?? "guest";
  print(username);
  //late keyword
  String name3;
  // print(name3);
  late String name2; //this var will be initialized later
  //print(name2);
  */

  /*
  BankingAcount acc = BankingAcount("ahmed", 1000);
  print(acc.owner);
  acc.owner = "adel";
  acc.balance = 4000;

  //BankingAcount acc2 = BankingAcount.emptyAcc("ali");
  //print(acc2.owner);
  //print(acc2.getBalance());
  log();

  CheckingAccount c1 = CheckingAccount("shahd", 500, 200);
  c1.withdraw(600);
  print(c1.balance);
  print(c1.overdraftlimit);
  // c1.logAccountType("");

  SavingsAccount s1 = SavingsAccount("osama", 40000, 0.05);
  SavingsAccount s2 = SavingsAccount.emptyAcc(owner: "salma");
  print(s2.owner);

  greeting(message: "hello", title: "eng.");

  print(BankingAcount.totalAccounts);
  */

  //dart have non-blocking behavior
  print("start");
  //runtime environment (register the callback)
  //schedule the callback to run after  0 secs
  //moves callback to the eventqueue [future1] ->
  //priority queue
  String? name = "ahmed";
  Future(() {
    //3milisecs
    print("future task 1");
  });
  // print("end");
  // print("end");
  // print("end");
  // print("end");
  // print("end");
  // print("end");
  // print("end");
  // print("end");
  // print("end");
  // print("end");
  // print("end");
  // print("end");
  // print("end");
  // print("end");
  // print("end");
  // print("end");
  // print("end");
  // print("end");
  // print("end");

  // Future.delayed(Duration(seconds: 3), () {
  //   print(name);
  //   print("future task 2");
  // });

  // Future.delayed(Duration(seconds: 2), () {
  //   print("future task 3");
  // });
  // print("end");

  // //resolved|rejected | completed|not-completed future
  // Future.value(() => print(name)).then((func) => func());
}

String? getUserName() {
  return null;
}


/*
class BankingAcount {
  //instance props
  late String owner;
  late double _balance;
  final String id;
  //BankingAcount();
  //shorthand form | : initializer list
  //BankingAcount() : owner = "Unknown", balance = 0;
  // BankingAcount() {
  //   print("account created successfully");
  //   owner = "Unknown";
  //   balance = 0;
  // }
  BankingAcount(this.owner, this._balance) : id = "20201101";
  // BankingAcount(String own, double bal) {
  //   owner = own;
  //   balance = bal;
  // }
  //Named constructor
  BankingAcount.emptyAcc(this.owner) : _balance = 0, id = "20201101";
  // BankingAcount.emptyAcc(String owner) {
  //   this.owner = owner;
  //   balance = 0;
  // }

  //Steps of creating the object
  /*
  1. Memory allocation;
  2. run initializer list -> final initialized here
  3. constructor body runs
  4. object is fully created
   */
}

*/