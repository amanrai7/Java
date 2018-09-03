import java.util.Scanner;
public class prime{
  public static void main(String[] args){
    Scanner s=new Scanner(System.in);
    int a=s.nextInt();
    int i,run=0,m=a/2;
    if(a==0||a==1){
      System.out.println(a+" is not a prime number");
    }
    else{
    for(i=2;i<m;i++){
      if(a%i==0){
        System.out.println(a+" is not a prime number");
        run=1;
        break;
      }
    }
    if(run==0)
    System.out.println(a+" is a prime number");
    }
  }
}
