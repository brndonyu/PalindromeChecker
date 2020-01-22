public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  //your code here
  String change = letters(word);
  if(change.equalsIgnoreCase(reverse(change)))
  {
    return true;
  }
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    //your code here
    for(int i = str.length(); i > 0; i--){
      sNew += str.substring(i-1,i);
    }
    return sNew;
}

public String letters(String s)
{
  String letter = "";
  for(int i = 0; i < s.length(); i++)
  {
    if(Character.isLetter(s.charAt(i)) == true)
    {
      letter += s.substring(i,i+1);
    }
  }
  return letter;
}
