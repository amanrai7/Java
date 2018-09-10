import java.util.Scanner;
public class substr{
  public static void main(String[] args){
    Scanner s=new Scanner(System.in);
    System.out.println("Enter a string");
    String st=s.nextLine();
    int size=st.length();
    int i,j;
    System.out.println("Substrings are");
    for(i=0;i<size;i++){
      for(j=i+1;j<=size;j++){
        System.out.println(st.substring(i,j));
      }
    }
  }
}
