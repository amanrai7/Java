import java.util.Scanner;
public class rectangle{
  public static void calculateArea(int l,int b){
    int area=l*b;
    System.out.println("Area of rectangle is "+area+" square units");
  }
  public static void main(String[] args){
    Scanner s=new Scanner(System.in);
    System.out.println("Enter length and breadth");
    int l=s.nextInt(),b=s.nextInt();
    calculateArea(l,b);
  }
}
