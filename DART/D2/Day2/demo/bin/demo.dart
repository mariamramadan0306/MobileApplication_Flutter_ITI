/*
Functions
Generics
data-structures collections -> list , set , map (iterable)
Null-Safety
 */

void main() {
  add(2, 4.6);
  //Function Expression
  //weak typing
  // Function expAdd = (num n1, num n2) {
  //   return n1 + n2;
  // };

  //Strong typing
  num Function(num, num) expAdd;
  expAdd = (num n1, num n2) {
    return n1 + n2;
  };

  //VAR
  //expAdd = 10;error
  // expAdd = (String name, String title) {
  //   print("$name $title");
  // };

  //expAdd(3, 6);

  //DYNAMIC
  //expAdd = 10; error
  // expAdd = (String name, String title) {
  //   print("$name $title");
  // };
  // expAdd("ahmed", "DR");

  //Strong typing
  //  expAdd = (String name, String title) {
  //   print("$name $title");
  // };
  // expAdd("ahmed", "DR"); error

  //Strong typing

  // String Function({String message, required String title, required String name})
  // greeting;
  // //Named parameters are optional by default
  // greeting =
  //     ({
  //       String message = "hello",
  //       required String title,
  //       required String name,
  //     }) {
  //       return "$message $title $name";
  //     };

  print(greeting("dr.", "ahmed"));
  greeting("hello", "DR", "ahmed"); //Mandatory
  // print(greeting(name: "shahd", title: "eng."));
  //VOID FUNCTION
  // var l = log("hello");
  // print(l);

  //GENERIC FUNCTION

  var res1 = logAndReturn<num>(7.7);
  print(res1.runtimeType);

  var result = transform<double, String>(4.5, (val) => val.toString());

  print(result.runtimeType);

  //DataStructures
  //List | Map | Set (Iterable)
  List L = [
    1,
    false,
    "str",
    5.5,
    [1, 4],
    () {
      print("hello");
    },
  ];
  List<int> L2 = [1, 2, 3, 4, 5, 6];

  // L2[1] = 10;
  // print(L2[0]);
  // print(L2[1]);
  // print(L2);
  //List props
  print(L2.length);
  print(L2.first);
  print(L2.last);
  print(L2.isEmpty);
  print(L2.reversed); //doesn't mutate original list return Iterable
  print(L2);
  // print(L2.single);
  //List Methods
  //add elements:mutating

  L2.add(100);
  L2.addAll([70, 30]);
  L2.insert(0, -1);
  L2.insert(4, 50);
  L2.insertAll(10, [1000, 0]);
  // print(L2);
  //Remove elements: mutating
  print(L2.remove(20)); //bool
  print(L2.removeAt(8)); //removed element
  print(L2.removeLast());
  print(L2);
  //access elements: non-mutating
  print(L2.indexOf(1000));
  print(L2.elementAt(0));
  //replace | modify list : mutating
  L2.replaceRange(0, 2, [500, 300, 700]);
  //L2.shuffle();
  //filtering elements: non-mutating(return new Iterable)
  Iterable I = L2.where((element) => element < 100);

  print(L2);
  print(I);
  print(L.whereType<String>());
  //Extracting parts: non-mutating
  print(L2.sublist(2, 6)); //return new list
  print(L2.getRange(2, 6)); //return Iterable
  print(L2.take(3)); //iterable
  print(L2.skip(3)); //iterable
  //checking conditions: return bool
  print(L2.any((e) => e > 1000));
  print(L2.every((e) => e <= 1000));
  //Aggregation methods: return single value

  var res = L2.fold(0, (e, sum) {
    print(sum); //0 + 500
    print(e);
    return sum + e;
  });
  print(res);
  print("-------------------------------------");

  var res2 = L2.reduce((e, sum) {
    print(sum); //500 + 300
    print(e);
    return sum + e;
  });
  print(res2);

  //search
  print(L2.firstWhere((e) => e.isOdd));
  //conversion method
  print(L2.join(",")); //return string
  //iteration
  L2.forEach((e) => print(e));
  List generated = List.generate(8, (_) => 1);
  print(generated);
  //Set
  Set<int> num1 = {1, 2, 3, 4};
  Set<int> num2 = {4, 6, 8, 9};

  print(num1);
  //add
  num1.add(1);
  num1.addAll({40, 50});
  //remove
  num1.remove(4);
  num1.remove(-1);
  num1.removeAll({6, 8});
  //num1.clear();
  //checking
  print(num1.contains(1));
  print(num1.containsAll({1, 500}));
  print(num1.lookup(500));
  //convert
  print(num1.toList());
  print(num1);
  //where, any , every, take, skip, fold , reduce, firstwhere, join , map
  // List<int> result = num1.map((e) => e * 3); error
  print(num1.map((e) => e * 3)); //return new iterable
  //union | join |difference | intersection task (why methods exist on set and not on list)
  //num1.union(num2);
  num1.join("*");

  print(num1);
  //Map key-value pairs
  Map<String, int> scores = {"ali": 60, "ahmed": 90};
  //adding/updating
  scores["ali"] = 80;
  scores.addAll({"ahmed": 50, "adel": 70});
  scores.putIfAbsent("ahmed", () => 70);
  //remove
  scores.remove("adel");
  //scores.clear();
  //access (Iterables)
  print(scores.keys);
  print(scores.values);
  print(scores.entries);
  print(scores.containsKey("adel"));
  print(scores.containsValue(70));
  print(scores.length);
  print(scores.isEmpty);
  //looping
  //forEach
  //for-in
  for (var entry in scores.entries) {
    print(entry.key);
    print(entry.value);
  }

  //Iterable why some props or methods return iterable
  //1. memory effeciency
  print(L2.reversed);
  /*
  12 place in memory
  12 place in memory (the resulted list)
   */
  //2.Lazy operation (iterable generate elements on demand)
  List numbers = [1, 2, 3, 4, 4];
  var filtered = numbers.where((e) => e > 2);
  //request
  print(filtered);
}

//Function Declaration
num add(num n1, num n2) {
  return n1 + n2;
}

//positional default parameters
String greeting([
  String message = "hi",
  String title = "Eng.",
  String name = "shahd",
]) {
  return "$message $title$name";
}

//Arrow Function (arrow functions accepts only one expression)
num arrowAdd(num n1, num n2) => n1 + n2;
//Void Function
void log(String message) {
  print(message);
}

//GENERICS
//we use generics to write a function , class, method that can work with any datatype and still keeps type safety (safe replacement of dynamic)

T logAndReturn<T>(T val) {
  print(val);
  return val;
}

T2 transform<T1, T2>(T1 value, T2 Function(T1) convert) {
  return convert(value);
}

/*
Collection
    |     |
Iterable  Map -> keys, values, entries are Iterable
    |
Set and List
 */
