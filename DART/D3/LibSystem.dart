abstract class Book {
  late String name;
  late String author;
  Book(this.name, this.author);
  bool borrow();

  void returnBook();
}

class EBook extends Book {
  late int fileSize;
  late bool _isBorrowed;
  EBook(super.name, super.author, this.fileSize) : _isBorrowed = false;

  @override
  bool borrow() {
    if (!_isBorrowed) {
      _isBorrowed = true;
      print("Borrowing the EBook $name by $author is done successfully");
      return true;
    } else {
      print("Error happend in borriwing the ebook $name,please try again");
      return false;
    }
  }

  @override
  bool returnBook() {
    if (_isBorrowed) {
      _isBorrowed = false;
      print("You returned the EBook $name successfully");
      return true;
    } else {
      print("You didin't borrow the ebook $name yet");
      return false;
    }
  }

  bool download() {
    if (this.fileSize > 0) {
      print("$name downloaded succesfully (file size $fileSize MB)");
      return true;
    } else {
      print("Error happend in downloading $name,please try again");
      return false;
    }
  }
}

class PrintedBook extends Book {
  late int count;

  PrintedBook(super.name, super.author, this.count);

  bool available() {
    if (this.count > 0) {
      return true;
    } else
      return false;
  }

  @override
  bool borrow() {
    if (this.available()) {
      print("Borrowing the printed book $name by $author is done successfully");

      count--;
      return true;
    } else {
      print(
        "Error happend in borrowing the printed book $name,please try again",
      );

      return false;
    }
  }

  @override
  void returnBook() {
    print("You returned the printed book $name successfully");
    count++;
  }
}

class Library {
  late List<Book> books = [];

  void addBook(Book book) {
    books.add(book);
  }

  void checkoutBook(Book book) {
    book.borrow();
  }

  void returnBook(Book book) {
    book.returnBook();
  }

  void showBooks() {
    for (var book in books) {
      print("${book.name} by ${book.author}");
    }
  }
}
