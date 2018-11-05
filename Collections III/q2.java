import java.util.Comparator;

import java.util.*;

class Student
{
  String name;
  int id;
  int age;

  Student(String name , int id , int age)
  {
    this.name = name;
    this.age = age;
    this.id = id;
  }

  public String toString()
  {
    return name+" "+id+" "+age+" ";
  }
}

class AgeComparator implements Comparator<Student>
{
  public int compare(Student a , Student b)
  {
    if(a.age==b.age)
    {
      return 0;
    }
    else if (a.age>b.age)
    {
        return 1;
    }
    else
    {
      return -1;
    }
  }
}

class NameComparator implements Comparator<Student>
{
  public int compare(Student a , Student b)
  {
    return a.name.compareTo(b.name);
  }
}
class q2 
{
  public static void main(String[] args) 
  {
    
  
    Student s1 = new Student("Ashmit",1093,21);
    Student s2 = new Student("raman",1088,24);
    Student s3 = new Student("Jayant",1044,22);
    Student s4 = new Student("raman",1088,24);
    Student s5 = new Student("Akshay",1095,23);
    Student s6 = new Student("ramandeep",1088,24);
    Student s7 = new Student("kavya",1045,19);

    ArrayList<Student> s = new ArrayList<Student>();

    s.add(s1);
    s.add(s2);
    s.add(s3);
    s.add(s4);
    s.add(s5);
    s.add(s6);
    s.add(s7);

    System.out.println("BEFORE SORTING \n");

    for(Student st :s)
    {
      System.out.println(st);
    }
    System.out.println();

    System.out.println("SORT BY AGE \n");

    Collections.sort(s , new AgeComparator());
    for(Student st : s)
    {
      System.out.println(st);
    }

    System.out.println();

    System.out.println("SORT BY NAME \n");

    Collections.sort(s , new NameComparator());
    for(Student st : s)
    {
      System.out.println(st);
    }

  }
  
}