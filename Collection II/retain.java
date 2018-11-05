import java.util.*;
class retain{
  public void add1(Set<Integer>s){
    Scanner o=new Scanner(System.in);
    System.out.println("Enter the elements of set and -1 to exit");
   int a=o.nextInt();
    while(a!=-1)
    { 
      s.add(a);
      a=o.nextInt();
    }
  }
  public static void main(String []args)
  {
    int a;
    retain m=new retain();
    
    Set<Integer> s=new HashSet<Integer>();
    Set<Integer> s1=new HashSet<Integer>();
    m.add1(s);
    m.add1(s1);
    s.retainAll(s1);
    Iterator it=s.iterator();
    System.out.println("Elements after retain:");
    while(it.hasNext())
    {
     System.out.println(it.next()); 
    }

  }
}