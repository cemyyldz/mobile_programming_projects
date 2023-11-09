class Laptop {
  int? id;
  String? name;
  int? ram;

  Laptop(this.id, this.name, this.ram);

  void Detaylar() {
    print('Laptop ID: $id');
    print('Laptop ismi: $name');
    print('RAM: $ram GB');
    print('\n');
  }
}

void main() {
  Laptop laptop1 = Laptop(1, 'Casper Excalibur', 16);
  Laptop laptop2 = Laptop(2, 'Asus Tuf Gaming', 16);
  Laptop laptop3 = Laptop(3, 'MacBook Air', 8);

  laptop1.Detaylar();
  laptop2.Detaylar();
  laptop3.Detaylar();
}
