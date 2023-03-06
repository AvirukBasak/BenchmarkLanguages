public class bench
{
    public static double runCode(double number)
    {
        if (number == 1)
            return 1;
        else {
            double num1 = number;
            double num2 = number;
            for (double i = 0; i < number * 1000; i++) {
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
