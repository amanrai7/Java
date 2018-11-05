import java.io.*;

class path {

  public static void main(String[] args) throws IOException {
    try {

      File file = new File("aview.txt");
      FileWriter w = new FileWriter("abc.txt");
      String f1;
      f1 = file.getAbsolutePath();
      w.write(f1);
      w.close();
      System.out.println("Read Successfully");

    } catch (IOException e) {
      e.printStackTrace();
    }
  }
}