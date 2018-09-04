import java.util.Scanner;
public class armstrong{
  public static void main(String[] args){
    Scanner s=new Scanner(System.in);
    System.out.println("Enter a number");
    int n=s.nextInt();
    int temp=n;
    int b,arm=0;
    while(n!=0){
      b=n%10;
      arm=arm+(b*b*b);
      n/=10;
    }
    if(arm==temp)
    System.out.println(temp+" is an armstrong number");
    else
    System.out.println(temp+" is not an armstrong number");
  }
}
