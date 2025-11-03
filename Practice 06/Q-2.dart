class House {
      int id;
      String Name;
      double price;
      House(this.id, this.Name, this.price);

      void display() {
          print('ID :- $id , Name :- $Name , Price :- $price');
      }
}
void main() {
    var a = House(1 ,'KABYA LODGE' , 404847374);
    var b = House(2 , 'XL shape ', 1457387456);
    var c = House(3 , 'Double Door' , 435345358);
    // a.display();
    // b.display();
    // c.display();
    List<House>p = [a, b, c];
    for(var i in p) {
      i.display();
    }
}
