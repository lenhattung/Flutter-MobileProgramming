class Product {
  double price;
  int quantity;
  String name;

  Product(this.price, this.quantity, this.name);

  void showTotal() {
    print("Total price is: ${price * quantity}");
  }
}

class Tablet extends Product {
  double width = 0;
  double height = 0;

  Tablet(this.width, this.height, double price, int quantity, String name)
    : super(price, quantity, name);

  @override
  void showTotal() {
    print("Name of Tablet: $name");
    super.showTotal();
  }
}

void main(){
  Product p = Product(6000000, 1, "San Pham");

  Product p1 = new Tablet(7, 6, 20000000, 10, "Ipad Pro");

  p.showTotal();
  print("\n");
  p1.showTotal();
}

// Nghien cuu ve lop truu tuong (abstract class)
