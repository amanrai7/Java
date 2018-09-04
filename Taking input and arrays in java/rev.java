import java.util.Scanner;
public class rev{
  public static void main(String[] args){
    Scanner s=new Scanner(System.in);
    System.out.println("Enter a number");
    int a=s.nextInt(),i,b,rev=0;
    while(a!=0){
      b=a%10;
      rev=(rev*10)+b;
      a/=10;
    }
    System.out.println(rev+" is the reversed number");
    }
}
