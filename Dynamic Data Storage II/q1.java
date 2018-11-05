import java.io.*;
class q1
{
    public static void main(String[] args) throws IOException
    {
        File f1=new File("abc.txt");
        boolean result=f1.exists();
        System.out.println("Already Exists?:::"+((result)?"Yes":"No"));
        result=f1.createNewFile();
        FileWriter a=new FileWriter("abc.txt");
        String str="C:/Users/Test/video.mp4";
        String str1="\nC:/Users/Test/doom.mkv";
        a.write(str);
        a.write(str1);  
        a.close();
        FileReader b=new FileReader("abc.txt");
        int info=b.read();
        while(info != -1)
        {
            System.out.print((char) info);
            info=b.read();
        }
        b.close();
    }
}