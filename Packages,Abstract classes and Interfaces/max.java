import java.util.Scanner;
public class max
{
	public static void main(String[] args)
	{
		Scanner s=new Scanner(System.in);
    System.out.println("Enter two numbers");
		String a=s.nextLine();
		String b=s.nextLine();
    int c=Integer.parseInt(a);
		int d=Integer.parseInt(b);
		System.out.print("Bigger Number is ");
		if(c>d)
		{
			System.out.println(c);
		}
		else
		{
			System.out.println(d);
		}
	}
}
