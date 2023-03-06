using System;

public class bench
{
    public static int RunCode(int number)
    {
        if (number == 1)
            return 1;
        else {
            int num1 = number;
            int num2 = number;
            for (int i = 0; i < number * 1000; i++) {
                num2 *= number;
            }
            return num2 * RunCode(num1 - 1);
        }
    }
    public static void Main(String[] args)
    {
        RunCode(10);
    }
}
