import java.util.Scanner;
public class palin{
  public static void main(String[] args){
    Scanner s=new Scanner(System.in);
    System.out.println("Enter a number");
    int a=s.nextInt(),i,b,rev=0;
    int temp=a;
    while(a!=0){
      b=a%10;
      rev=(rev*10)+b;
      a/=10;
    }
    if(rev==temp)
    System.out.println(temp+" is a palindrome number");
    else
    System.out.println(temp+" is not a palindrome number");
  }
}
