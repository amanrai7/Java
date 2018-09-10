final class exp{
  void display(){
    System.out.println("Non extendable class");
  }
}
public class noextend{
  public static void main(String[] args){
    exp a=new exp();
    a.display();
  }
}
