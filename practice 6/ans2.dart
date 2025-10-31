class House {
  int id;
  String name;
  double price;

  House(this.id, this.name, this.price);

  void display() {
    print('ID: $id, Name: $name, Price: \$${price}');
  }
}

void main() {
  List<House> houses = [
    House(1, "Villa", 1500000),
    House(2, "Bungalow", 2000000),
    House(3, "Apartment", 800000)
  ];

  for (var h in houses) {
    h.display();
  }
}
