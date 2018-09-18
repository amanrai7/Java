import java.util.Scanner;
public class maxf{
  public static void main(String[] args){
    Scanner scan=new Scanner(System.in);
    System.out.println("Enter a string");
    String s=scan.nextLine();
    String qt=s.toLowerCase();
    char[] ch=qt.toCharArray();
    int size=ch.length,i,j;
    int freq=0,old=0;
    int temp=0;
    for(i=0;i<size;i++){
      freq=0;
      for(j=0;j<size;j++){
        if(ch[i]==ch[j]){
          freq++;
        }
      }
      if(i==0)
      {
        old=freq;
      }
      if(freq>old && i!=0){
        old=freq;
        temp=i;
      }
      if(i==size-1){
        break;
      }
        //old=freq;
    }
    System.out.println("Character having maximum frequency is "+ch[temp]);
  }
}
