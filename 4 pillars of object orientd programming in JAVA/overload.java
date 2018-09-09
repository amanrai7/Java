class out{
  void print(){
    System.out.println("Null value");
  }
  void print(int n){
    System.out.println("integer value "+n);
  }
  void print(float f){
    System.out.println("float value "+f);
  }
}
public class overload{
  public static void main(String[] args){
    int n=7;
    float f=4.26f;
    out t=new out();
    t.print();
    t.print(n);
    t.print(f);
  }
}
