class BankingAcount {
  //instance props
  late String owner;
  late double _balance;
  final String id;
  static int totalAccounts = 0;
  static void incrementAccountsCount() {
    totalAccounts++;
  }

  static int get getTotalAccounts => totalAccounts;

  //BankingAcount();
  //shorthand form | : initializer list
  //BankingAcount() : owner = "Unknown", balance = 0;
  // BankingAcount() {
  //   print("account created successfully");
  //   owner = "Unknown";
  //   balance = 0;
  // }
  BankingAcount(this.owner, this._balance) : id = "20201101" {
    incrementAccountsCount();
  }
  // BankingAcount(String own, double bal) {
  //   owner = own;
  //   balance = bal;
  // }
  //Named constructor
  BankingAcount.emptyAcc({required this.owner}) : _balance = 0, id = "20201101";
  // BankingAcount.emptyAcc(String owner) {
  //   this.owner = owner;
  //   balance = 0;
  // }

  //getter _balance
  // double get balance {
  //   return _balance;
  // }
  double get balance => _balance;
  // double getBalance() {
  //   return _balance;
  // }
  //setter
  set balance(double val) => _balance = val;

  void withdraw(double amount) {
    if (amount <= 0) return;
    if (amount <= _balance) {
      _balance -= amount;
    }
  }
}

void log() {
  BankingAcount acc = BankingAcount("shahd", 1000);
  print(acc._balance);
  print(acc.owner);
}

//Steps of creating the object
/*
  1. Memory allocation;
  2. run initializer list -> final initialized here
  3. constructor body runs
  4. object is fully created
   */

//Heirarcial inheritance
class SavingsAccount extends BankingAcount {
  late double interestRate;

  SavingsAccount(super.owner, super._balance, this.interestRate);
  // SavingsAccount(String owner, double balance, double intR) {
  //   super._balance = balance;
  //   super.owner = owner;
  //   this.interestRate = intR;
  // }
  //SavingsAccount(super.owner, super.balance, this.interestRate);
  SavingsAccount.emptyAcc({String owner = "Unknown"})
    : super.emptyAcc(owner: owner);
}

class CheckingAccount extends BankingAcount
    with TransactionLogger, AccountTypeLogger {
  late double overdraftlimit;
  CheckingAccount(super.owner, super._balance, this.overdraftlimit);

  //Ploymorphism
  //same method signature, differenct implementation
  @override
  void withdraw(double amount) {
    if (amount <= 0) {
      logTransaction("amount value must be greater then 0");
      return;
    }
    //case1: amount < balance (no need overdraft limit)
    if (amount <= _balance) {
      _balance -= amount;
    } else if (amount <= _balance + overdraftlimit) {
      double remaining = amount - _balance; //50
      _balance = 0;
      overdraftlimit -= remaining; //150
    } else {
      print("amount exceeded overdarft limit");
    }
  }
}

//muti-level inheritance
/*
parent part (ancestor, parent)
child part
 */
class PremiumSavings extends SavingsAccount {
  PremiumSavings(String owner, double balance) : super(owner, balance, 0.08);
}

void greeting({String message = "x", String title = "y", String name = "z"}) {
  print("$message $title $name");
}

abstract class Customer {
  late String name;
  late String customerId;
  Customer(this.name, this.customerId);

  //concrete method
  void viewProfile() {
    print("customer: $name , ID: $customerId");
  }

  //abstract method
  void accessServices();
}

//Interface
abstract class Loanable {
  void requestLoan();
  double getLoanAmount();
}

class Insurable {
  void buyInsurance() {}
}

class RegularCustomer extends Customer {
  RegularCustomer(super.name, super.customerId);

  @override
  void accessServices() {
    print("$name can access basic services");
  }
}

class PremiumCustomer extends Customer implements Loanable, Insurable {
  PremiumCustomer(super.name, super.customerId);
  @override
  void accessServices() {
    print("$name can access premium services");
  }

  @override
  void requestLoan() {
    print("");
  }

  @override
  double getLoanAmount() {
    return 100000;
  }

  @override
  void buyInsurance() {
    print("");
  }
}

mixin TransactionLogger {
  void logTransaction(String message) {
    print("log: $message");
  }
}

mixin AccountTypeLogger {
  void logAccountType(String accT) {
    print("log: $accT");
  }
}
