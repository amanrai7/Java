class q4<T>
{
  public static <T> void printArray(T[] array)
  {
    for(int i=0;i<array.length;i++)
    {
      System.out.print(array[i] + " ");
    }
    System.out.println();
  }

  public static void main(String[] args)
  {
    Integer[] intArray = {1,2,3,4,5};
    Double[] doubleArray = {1.1,1.2,1.3,1.4};
    String[] stringArray = {"Hello","world","Hello World"};
    Character[] charArray = {'a','b','c','d'};

    
    printArray(intArray);
    printArray(doubleArray);
    printArray(stringArray);
    printArray(charArray);

  }
}