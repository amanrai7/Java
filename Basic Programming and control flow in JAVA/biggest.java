import java.util.Scanner;
public class biggest{
  public static void main(String[] args){
    Scanner s=new Scanner(System.in);
    System.out.println("Enter 3 numbers");
    int a=s.nextInt(),b=s.nextInt(),c=s.nextInt();
    int big=a;
    if(b>a){
      if(b>c){
        big=b;
      }
      else
      big=c;
    }
    else
    big=a;
    System.out.println(big+" is the biggest number");
  }
}
