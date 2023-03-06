public class bench
{
    public static int runCode(int number)
    {
        if (number == 1)
            return 1;
        else {
            int num1 = number;
            int num2 = number;
            for (int i = 0; i < number * 1000; i++) {
                num2 *= number;
            }
            return num2 * runCode(num1 - 1);
        }
    }
    public static void main(String args[])
    {
        runCode(10);
    }
}
