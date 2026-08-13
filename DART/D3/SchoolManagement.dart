abstract class Person {
  void displayDetails();
  String getRole();
}

class Student implements Person {
  late String name;
  late int id;
  late String grade;

  Student(this.name, this.id, this.grade);

  @override
  void displayDetails() {
    print("student info:\n name:$name\n id:$id\n grade: $grade");
  }

  @override
  String getRole() {
    return "Student";
  }
}

class Teacher implements Person {
  late String name;
  late int id;
  late String subject;

  Teacher(this.name, this.id, this.subject);

  @override
  void displayDetails() {
    print("teacher info:\n name:$name\n id:$id\n subject: $subject");
  }

  @override
  String getRole() {
    return "Teacher";
  }
}

class Staff implements Person {
  late String name;
  late int id;
  late String department;

  Staff(this.name, this.id, this.department);

  @override
  void displayDetails() {
    print("staff info:\n name:$name\n id:$id\n department: $department");
  }

  @override
  String getRole() {
    return "Staff member";
  }
}
