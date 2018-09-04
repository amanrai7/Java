import java.util.Scanner;
public class prime{
  public static void main(String[] args){
    Scanner s=new Scanner(System.in);
    System.out.println("Enter a number");
    int n=s.nextInt();
    int i,j,run;
    for(i=2;i<=n;i++){
      run=0;
      for(j=2;j<i;j++){
        if(i%j==0){
          run=1;
        }
      }
      if(run==0){
        System.out.print(i+" ");
      }
  }
}
}
