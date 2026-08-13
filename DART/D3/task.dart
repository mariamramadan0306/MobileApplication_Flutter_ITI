import 'LibSystem.dart';
import 'SchoolManagement.dart';
import 'ShapeArea.dart';

void main() {
  //LIBRARY SYSTEM
  EBook eb1 = EBook("ebook1", "auther1", 253);
  PrintedBook pb1 = PrintedBook("printed book1", "auther2", 2);

  Library library = Library();

  library.addBook(eb1);
  library.addBook(pb1);

  library.checkoutBook(eb1);
  library.checkoutBook(pb1);
  print(pb1.count);

  library.checkoutBook(eb1);
  library.checkoutBook(pb1);

  eb1.download();

  print(
    "Is '${pb1.name}' available? "
    "${pb1.available() ? "yes it is available" : "no it is not available"}",
  );

  library.returnBook(eb1);
  library.returnBook(pb1);

  print(
    "Is '${pb1.name}' available? "
    "${pb1.available() ? "yes it is available" : "no it is not available"}",
  );

  print('\n\n\n\n');

  //SHAPE AREA
  Rectangle rectangle = Rectangle(10, 5);
  Circle circle = Circle(7);
  Triangle triangle = Triangle(6, 4);
  Cube cube = Cube(3);

  print("Rectangle area: ${rectangle.calculateArea()}");
  print("Rectangle perimeter: ${rectangle.calcPerimeterMixin()}");

  print("Circle area: ${circle.calculateArea()}");
  print("Circle perimeter: ${circle.calcPerimeterMixin()}");

  print("Triangle area: ${triangle.calculateArea()}");
  print("Triangle perimeter: ${triangle.calcPerimeterMixin()}");

  print("Cube surface area: ${cube.calculateArea()}");
  print("Cube volume: ${cube.calcVolumeMixin()}");

  print('\n\n\n\n');

  //SCHOOL MANAGEMENT SYSTEM
  Student student = Student("Mariam", 101, "A");
  Teacher teacher = Teacher("Mohamed", 201, "Maths");
  Staff staff = Staff("Mona", 301, "Administration");

  List<Person> people = [student, teacher, staff];

  for (Person person in people) {
    print("Role: ${person.getRole()}\n");
    person.displayDetails();
    print("--------------------");
  }
}
