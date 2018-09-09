import java.util.Scanner;
public class complex{
  public static void display(int r,int i){
    System.out.println(r+"+"+i+"i");
  }
  public static void main(String[] args){
    Scanner s=new Scanner(System.in);
    System.out.println("Enter real and imaginary part");
    int r=s.nextInt(),i=s.nextInt();
    display(r,i);
  }
}
