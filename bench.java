public class bench
{
    public static int runCode (int number)
    {
        if (number == 1)
            return 1;
        else
            return number * runCode (number - 1);
    }
    public static void main (String args[])
    {
        runCode (100);
    }
}
