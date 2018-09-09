class animal{
  String breed,colour;
  void speak(){
    System.out.println("Animal speak");
  }
}
class dog extends animal{
  void speak(){
    breed="bulldog";
    colour="brown";
    System.out.println("Dog baeks");
  }
}
class cat extends animal{
  void speak(){
    breed="birman";
    colour="white";
    System.out.println("Cat meow");
  }
}
public class animals{
  public static void main(String[] args){
    dog d=new dog();
    d.speak();
    cat c=new cat();
    c.speak();
    System.out.println("dog's breed and colour is "+d.breed+" "+d.colour);
    System.out.println("cat's breed and colour is "+c.breed+" "+c.colour);
  }
}
