import java.util.Scanner;
public class search{
  public static void main(String[] args){
    Scanner s=new Scanner(System.in);
    int[] a=new int[]{1,4,6,7,8,9,10};
    int i,j,temp,size=a.length,run=0;
    System.out.println("Enter the number to be searched");
    int n=s.nextInt();
    for(i=0;i<size;i++){
      if(n==a[i]){
        run=1;
        System.out.println("Found");
        System.out.println("The number "+n+" is present at position "+(i+1));
        break;
      }
    }
    if(run==0){
      System.out.println("Not Found");
    }
    }
}
