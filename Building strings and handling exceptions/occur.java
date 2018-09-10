import java.util.Scanner;
public class occur{
  public static void check(String st,String ch){
    int a=st.length();
    int b=ch.length();
    int i,j,o=0;
    for(i=0;i<a;i++){
      for(j=i+1;j<=a;j++){
        if(ch.equals(st.substring(i,j))){
          o++;
        }
      }
    }
    System.out.println("occurences are "+o);
  }
  public static void main(String[] args){
    Scanner s=new Scanner(System.in);
    System.out.println("Enter a string");
    String st=s.nextLine();
    System.out.println("Enter th string to check occurrence in the first string");
    String ch=s.nextLine();
    check(st,ch);
  }
}
