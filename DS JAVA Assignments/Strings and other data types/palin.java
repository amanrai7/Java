import java.util.*;
public class palin{
  public static void main(String[] args){
    Scanner s=new Scanner(System.in);
    System.out.println("Enter a string to check if it is palindrome:");
    String st=s.nextLine();
    String temp=st;
    char[] ch=st.toCharArray();
    String rev="";
    int i,size=ch.length;
    for(i=size-1;i>=0;i--){
      rev=rev+ch[i];
    }
    if(temp.equals(rev)){
      System.out.println("palindrome and reversed string is "+rev);
    }
    else{
      System.out.println("not palindrome and reversed string is "+rev);
    }
  }
}
