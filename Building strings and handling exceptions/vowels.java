import java.util.Scanner;
public class vowels{
  public static void main(String[] args){
    Scanner s=new Scanner(System.in);
    System.out.println("Enter a string");
    String s1=s.nextLine();
    char[] ch=s1.toCharArray();
    char temp;
    int i,size=ch.length,j;
    for(i=0;i<size;i++){
      if(ch[i]=='a'||ch[i]=='e'||ch[i]=='i'||ch[i]=='o'||ch[i]=='u'){
        ch[i]=ch[i+1];
        size--;
        for(j=i+1;j<size;j++){
          ch[j]=ch[j+1];
        }

      }
    }
    for(i=0;i<size;i++){
      System.out.print(ch[i]);
    }
  }
}
