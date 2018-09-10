class fun{
  fun(){
    System.out.println("Default");
  }
  fun(String s){
    this();
    System.out.println("Parameterised");
  }
}
public class def{
  public static void main(String[] args){
    fun d=new fun("String");
  }
}
