void main() {
  Set<int> num1 = {1, 2, 3, 4};
  Set<int> num2 = {4, 6, 8, 9};

  //union | join |difference | intersection task (why methods exist on set and not on list)

  print(num1.union(num2));

  print(num1.join("*"));

  print(num1.difference(num2));

  print(num1.intersection(num2));
}
