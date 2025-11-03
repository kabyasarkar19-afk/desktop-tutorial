class Animal {
      int id;
      String Name;
      var color;
      Animal(this.id ,this.Name,this.color);
}
class Cat extends Animal {
      String sound = 'Meow';
      Cat(int id ,String Name,var color) : super(id, Name ,color);
      void display() {
         print('ID :- $id , Name :- $Name , Price :- $color , Sound :- $sound');
      }
}
void main() {
    var a = Cat(1 ,'Milo' ,'white');
    var b = Cat(2 , 'Rustom', 'Ginger');
    var c = Cat(3 , 'Toqy', 'Gray');
    // a.display();
    // b.display();
    // c.display();
    List<Cat>p = [a, b, c];
    for(var i in p) {
      i.display();
    }
}
