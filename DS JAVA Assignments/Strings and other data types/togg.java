import java.util.Scanner;
public class togg{
  public static void main(String[] args){
    Scanner s=new Scanner(System.in);
    System.out.println("Enter a string");
    String s1=s.nextLine();
    char[] ch=s1.toCharArray();
    int i,size=ch.length;
    for(i=0;i<size;i++){
      if(ch[i]>=65 && ch[i]<=90){
        ch[i]+=32;
      }
      else if(ch[i]>=97 && ch[i]<=122){
        ch[i]-=32;
      }
      else{
        System.out.println("Wrong input");
      }
    }
    System.out.println("Output:");
    for(i=0;i<size;i++){
      System.out.print(ch[i]);
    }
  }
}
