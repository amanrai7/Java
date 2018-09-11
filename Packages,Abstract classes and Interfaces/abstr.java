abstract class animals{
  String breed,colour,name;
  abstract void eat(String b,String c,String n);
  void speak(){
    System.out.println("Animal speaks");
  }
}
class dog extends animals{
  void eat(String b,String c,String n){
    breed=b;
    colour=c;
    name=n;
    System.out.println("Name is "+name+"  Breed is "+breed+" And colour is "+colour);
  }
  void speak(){
    System.out.println("Dog barks");
  }
}
public class abstr{
  public static void main(String[] args){
    animals d=new dog();
    d.eat("lebra","black","Bhavya");
    d.speak();
  }
}
