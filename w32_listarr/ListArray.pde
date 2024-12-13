class ListArray {
  char[] array; // Underlying array to store elements
  int size; // Current size of the list
  // Constructor with capacity
  ListArray(int capacity) {
    array = new char[capacity];
    size = 0;
  }
  // Overloaded constructor with default capacity of 20
  ListArray() {
    this(20);
  }
  // Convert the list to a string representation
  String toString() {
    StringBuilder sb = new StringBuilder("[");
    for (int i = 0; i < size; i++) {
      sb.append(array[i]);
      if (i < size - 1) {
        sb.append(" ");
      }
    }
    sb.append("]");
    return sb.toString();
  }
  // Add a character to the end of the list
  void add(char c) {
    if (size < array.length) {
      array[size] = c;
      size++;
    } else {
      // In case of insufficient capacity, expand the array
      expandCapacity();
      array[size] = c;
      size++;
    }
  }
  // Return the character at a given index
  char get(int i) {
    if (i >= 0 && i < size) {
      return array[i];
    }
    return 0; // Return 0 for invalid index
  }
  // Return the index of a given character
  int indexOf(char c) {
    for (int i = 0; i < size; i++) {
      if (array[i] == c) {
        return i;
      }
    }
    return -1; // Return -1 if the character is not found
  }
  // Helper method to expand the capacity of the array
  void expandCapacity() {
    char[] newArray = new char[array.length * 2];
    for (int i = 0; i < array.length; i++) {
      newArray[i] = array[i];
    }
    array = newArray;
  }
}
