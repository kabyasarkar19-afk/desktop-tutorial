class Camera {
      int _id;
      var _brand;
      var _color;
      var _price;

      Camera(this._id, this._brand, this._color, this._price);

      // Getters
      int get id => _id;
      String get brand => _brand;
      String get color => _color;
      double get price => _price;

      // Setters
      set id(int value) => _id = value;
      set brand(String value) => _brand = value;
      set color(String value) => _color = value;
      set price(double value) => _price = value;

      void display() {
            print('ID: $_id, Brand: $_brand, Color: $_color, Price: \$$_price');
      }
}
void main() {
    var a = Camera(1, 'Canon', 'Black', 55000);
    var b = Camera(2, 'Nikon', 'Gray', 65000);
    var c = Camera(3, 'Sony', 'White', 75000);
    // a.display();
    // b.display();
    // c.display();
    List<Camera>p = [a, b, c];
    for(var i in p) {
      i.display();
    }
}
