abstract class vehicle{
  abstract void start();
  void stop(){
    System.out.println("stop vehicle");
  }
}
class twoWheeler extends vehicle{
  void start(){
    System.out.println("start 2 wheeler");
  }
  void stop(){
    System.out.println("stop 2 wheeler");
  }
}
class fourWheeler extends vehicle{
  void start(){
    System.out.println("start 4 wheeler");
  }
  void stop(){
    System.out.println("stop 4 wheeler");
  }
}
public class vehicles{
  public static void main(String[] args){
    twoWheeler ob1=new twoWheeler();
    fourWheeler ob2=new fourWheeler();
    ob1.start();
    ob1.stop();
    ob2.start();
    ob2.stop();
  }
}
