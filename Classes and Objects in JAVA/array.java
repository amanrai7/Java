import java.util.Scanner;
public class array{
  public static void main(String[] args){
    Scanner s=new Scanner(System.in);
    int[] ar=new int[10];
    int i,j,temp;
    System.out.println("Enter 10 digits in the array");
    for(i=0;i<10;i++){
      ar[i]=s.nextInt();
    }
    for(i=0;i<10;i++){
      for(j=i+1;j<10;j++){
        if(ar[j]<ar[i]){
        temp=ar[i];
        ar[i]=ar[j];
        ar[j]=ar[i];
      }
      }
    }
    System.out.println("Second largest element is "+ar[1]);
  }
}
