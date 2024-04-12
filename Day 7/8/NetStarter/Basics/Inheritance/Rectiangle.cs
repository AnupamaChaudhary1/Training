//calculate area and p if 2D obj
class Rectiangle{
    //Default constructor
    //public Rectiangle(){

    //}
    public Rectiangle(double l, double b){
        length=l;
        breadth=b;
    }
    double length;
    double breadth;
    public double GetArea()=> length*breadth;
    public double GetPerimeter()=>2*(length+breadth);
}