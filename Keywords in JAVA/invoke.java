class parent{
  void fun(){
    System.out.println("Parent");
  }
}
class child extends parent{
  void fun(){
    super.fun();
  }
}
public class invoke{
  public static void main(String[] args){
    child c=new child();
    c.fun();
  }
}
