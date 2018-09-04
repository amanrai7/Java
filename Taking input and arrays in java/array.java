public class array{
  public static void main(String[] args){
    int[] a=new int[]{1,1,1,1,0,0,1,0};
    int i,j,temp,size=a.length;
    for(i=0;i<size;i++){
      for(j=i+1;j<size;j++){
        if(a[j]<a[i]){
          temp=a[i];
          a[i]=a[j];
          a[j]=temp;
        }
      }
    }
    System.out.print("sorted array is { ");
    for(i=0;i<size;i++){
      System.out.print(a[i]+",");
    }
    System.out.print(" }");
  }
}
