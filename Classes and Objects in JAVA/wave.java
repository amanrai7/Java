import java.util.Scanner;
public class wave{
  public static void main(String[] args){
    Scanner s=new Scanner(System.in);
    int[] ar=new int[10];
    int i,temp,cnt=0;
    System.out.println("Enter 10 digits in the array");
    for(i=0;i<10;i++){
      ar[i]=s.nextInt();
    }
    for(i=0;i<10;i++){
      cnt++;
      if(cnt==2){
        temp=ar[i-1];
        ar[i-1]=ar[i];
        ar[i]=temp;
        cnt=0;
      }
    }
    System.out.println("The waveform is");
    for(i=0;i<10;i++){
      System.out.print(ar[i]+" ");
    }
  }
}
