abstract class Bottle {
    void open();
    factory Bottle() {
        return CokeBottle();
    }
}
class CokeBottle implements Bottle {
    @override
    void open() {
        print("Coke Bottle is open");
    }

}

void main() {
    Bottle bottle = Bottle();
    bottle.open();
}
