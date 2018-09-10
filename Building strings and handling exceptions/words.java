import java.util.Scanner;
public class words{
  public static void main(String[] args){
    Scanner s=new Scanner(System.in);
    System.out.println("Enter a string");
    String st=s.nextLine();
    int word=0,i,j;
    char[] ch=st.toCharArray();
    int size=ch.length;
    for(i=0;i<size;i++){
      if(ch[i]==' '){
        word++;
      }
    }
    if(st.isEmpty()){
      System.out.println("Empty String");
    }
    else{
      System.out.println("Words are "+(word+1));
    }
  }
}
