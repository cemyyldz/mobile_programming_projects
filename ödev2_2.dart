class House {
  int id;
  String name;
  double price;

  House(this.id, this.name, this.price);

  void Detaylar() {
    print('Ev ID: $id');
    print('Ev Adi: $name');
    print('Fiyat: ${price.toStringAsFixed(2)} TL');
    print('\n');
  }
}

void main() {
  House ev1 = House(1, 'Villa Ev', 350000.0);
  House ev2 = House(2, 'Dublex Ev', 300000.0);
  House ev3 = House(3, 'Daire Ev', 200000.0);

  List<House> evListesi = [ev1, ev2, ev3];

  for (var ev in evListesi) {
    ev.Detaylar();
  }
}
