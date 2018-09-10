import java.util.Scanner;
public class rev{
  public static void main(String[] args){
    Scanner s=new Scanner(System.in);
    System.out.println("Enter a string");
    String s1=s.nextLine();
    char[] ch=s1.toCharArray();
    int i,size=ch.length;
    String rev="";
    for(i=size-1;i>=0;i--){
      rev=rev+ch[i];
    }
    System.out.print("Reversed string is "+rev);
  }
}
