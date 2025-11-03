class Laptop {
      int id;
      String Name;
      int ram;
      Laptop(this.id, this.Name, this.ram);

      void display() {
          print('ID :- $id , Name :- $Name , Ram :- $ram');
      }
}
void main() {
    var a = Laptop(1 ,'Tosiba' , 4);
    var b = Laptop(2 , 'MAC', 16);
    var c = Laptop(3 , 'HP' , 8);
    a.display();
    b.display();
    c.display();
}
