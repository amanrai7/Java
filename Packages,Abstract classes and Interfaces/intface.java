interface animals{
  abstract public void speak();
  abstract public void eat();
}
class dog implements animals{
  public void speak(){
    System.out.println("Dog barks");
  }
  public void eat(){
    System.out.println("Dog eats");
  }
}
class cat implements animals{
  public void speak(){
    System.out.println("Cat Meow");
  }
  public void eat(){
    System.out.println("Cat eats");
  }
}
public class intface{
  public static void main(String[] args){
    animals d=new dog();
    animals c=new cat();
    d.speak();
    d.eat();
    c.speak();
    c.eat();
  }
}
