class ListArray {
  char[] array;
  int cap;

  ListArray(int capacity) {
    array = new char[capacity];
  }
  ListArray() {
    cap = 20;
  }

  String toString() {
    return "[" + str(array) + "]";
  }
  
  void add(char c) {
    int size = 0;
    while (size < array.length) {
      if (array[size] == null) {
        array[size] = c;
      }
    }
  }
}
