public class bench
{
    public int RunCode (int number)
    {
        if (number == 1)
            return 1;
        else
            return number * RunCode (number - 1);
    }
    public static void Main (String args[])
    {
        RunCode (100);
    }
}
