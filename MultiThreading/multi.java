import java.util.*;
class multi extends Thread {
  
  public synchronized void t1()
  {
    for(int i=1;i<=500;i++)
    {
      System.out.println(i);
    }
  }
  public synchronized void t2()
  {
    for(int i=501;i<=1000;i++)
    {
      System.out.println(i);
    }
  } 
    public void run(){
      
    t1();
    t2();  
  }
  
  public static void main(String[] args) {
    multi m=new multi();
    m.start();
    }
}