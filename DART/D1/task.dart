import 'dart:ffi';
import 'dart:io';

void main() {
  print("enter your first name");
  String firstName = stdin.readLineSync().toString().toLowerCase().trim();
  print("enter your last name");
  String lastName = stdin.readLineSync().toString().toLowerCase().trim();
  String birthYear;
  var matchYear;

  do {
    print("enter your birth year");
    birthYear = stdin.readLineSync().toString().toLowerCase().trim();
    RegExp patternYear = RegExp(r'^[1-9][0-9]{3}$');
    matchYear = patternYear.firstMatch(birthYear);
  } while (matchYear?.group(0) == null);

  num birthYearNum = num.tryParse(birthYear) ?? 0;
  num age = 2026 - birthYearNum;
  assert(age > 0, "Age must be greater than 0!");

  String userName =
      firstName.substring(0, 2).toUpperCase() +
      lastName.substring(0, 2).toUpperCase() +
      birthYear.substring(2);

  print("enter your username");
  String userN = stdin.readLineSync().toString().trim();

  while (userName.compareTo(userN) != 0) {
    print("Wrong,Please enter your username correctly");
    userN = stdin.readLineSync().toString().trim();
  }

  if (userName.compareTo(userN) == 0) print("UserName is correct !");

  RegExp pattern = RegExp(r'^([\w]{4})+[0-9]{2}$');
  var match = pattern.firstMatch(userName);
  if (match?.group(0) != null)
    print("valid unserName");
  else
    print("invalid unserName");

  String classification = age >= 18 ? "Adult" : "Minor";
  String accessLevel;
  switch (classification) {
    case "Adult":
      accessLevel = "Full";
    case "Minor":
      accessLevel = "Limited";
    default:
      accessLevel = "none";
  }

  num choice = 0;
  while (choice != 4) {
    print("Enter a number :");
    print(
      " 1) Show user info: \n 2) Check age category: \n 3)Show username \n 4)Exit",
    );
    choice = num.tryParse(stdin.readLineSync()!.trim()) ?? 0;
    switch (choice) {
      case 1:
        print(
          ' USER INFO:\nfirst name: $firstName \nsecond name: $lastName \nbirth year: $birthYear \naccess type: $accessLevel \n',
        );
      case 2:
        print('Age category: $classification \n');
      case 3:
        print('username: $userName \n');
      case 4:
        print("Exit!");

      default:
        print("You have to enter a number between 1 and 4 only!");
    }
  }
}
