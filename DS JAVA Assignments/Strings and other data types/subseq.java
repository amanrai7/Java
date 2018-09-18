import java.util.*;
public class subseq {
    static HashSet<String> st = new HashSet<>();
    static void subsequence(String str)
    {
        for (int i = 0; i < str.length(); i++) {
            for (int j = str.length(); j > i; j--) {
                String sub_str = str.substring(i, j);
                if (!st.contains(sub_str))
                    st.add(sub_str);
                for (int k = 1; k < sub_str.length() - 1; k++) {
                    StringBuffer sb = new StringBuffer(sub_str);
                    sb.deleteCharAt(k);
                    if (!st.contains(sb));
                    subsequence(sb.toString());
                }
            }
        }
    }
    public static void main(String[] args)
    {
        Scanner scan=new Scanner(System.in);
        System.out.println("Enter a string");
        String s =scan.next();
        subsequence(s);
        System.out.println("Subsequences are:");
        System.out.println(st);
    }
}
