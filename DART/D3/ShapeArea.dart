abstract class Shape {
  double calculateArea();
}

class Rectangle extends Shape with calulations {
  late double length;
  late double width;

  Rectangle(this.length, this.width);

  @override
  double calculateArea() {
    return length * width;
  }

  @override
  double calcPerimeterMixin() {
    return 2 * (length + width);
  }
}

class Circle extends Shape with calulations {
  late double radius;

  Circle(this.radius);

  @override
  double calculateArea() {
    return 3.14 * radius * radius;
  }

  @override
  double calcPerimeterMixin() {
    return 2 * 3.14 * radius;
  }
}

class Triangle extends Shape with calulations {
  late double base;
  late double height;

  Triangle(this.base, this.height);

  @override
  double calculateArea() {
    return 0.5 * base * height;
  }

  @override
  double calcPerimeterMixin() {
    return 3 * base;
  }
}

class Cube extends Shape with calulations {
  late double side;

  Cube(this.side);

  @override
  double calculateArea() {
    return 6 * side * side;
  }

  @override
  double calcVolumeMixin() {
    return side * side * side;
  }
}

mixin calulations {
  double calcPerimeterMixin() {
    return 0;
  }

  double calcVolumeMixin() {
    return 0;
  }
}
