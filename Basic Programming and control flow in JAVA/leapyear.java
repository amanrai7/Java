import java.util.Scanner;
public class leapyear{
  public static void main(String[] args){
    Scanner s=new Scanner(System.in);
    System.out.println("Enter year to check for leap year:");
    int year=s.nextInt();
    int run=0;
    if(year%4==0){
      if(year%100==0){
        if(year%400==0){
          run=1;
        }
        else
        run=0;
      }
      else
      run=1;
    }
    else
    run=0;
    if(run==1){
      System.out.println(year+" is a leap year");
    }
    else{
      System.out.println(year+" is not a leap year");
    }
  }
}
