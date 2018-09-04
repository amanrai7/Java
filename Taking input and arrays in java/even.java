import java.util.Scanner;
public class even{
  public static void main(String[] args){
    Scanner s=new Scanner(System.in);
    System.out.println("Enter a number");
    int n=s.nextInt();
    for(int i=2;i<n;i+=2){
      System.out.print(i+" ");
    }
  }
}
