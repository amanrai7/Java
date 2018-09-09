import java.util.Scanner;
class staticdemo{
  int first,sec;
  static String parent;
  static{
    parent="Numbers";
  }
}
public class stat{
  public static void main(String[] args){
    Scanner s=new Scanner(System.in);
    staticdemo ob=new staticdemo();
    ob.first=s.nextInt();
    staticdemo bo=new staticdemo();
    bo.sec=s.nextInt();
    System. out.println(ob.first+" and "+bo.sec+" are the children of "+ob.parent);
  }
}
