double run_code(double number)
{
    if (number == 1)
        return 1;
    else {
        double num1 = number;
        double num2 = number;
        for (double i = 0; i < number * 1000; i++) {
            num2 *= number;
        }
        return num2 * run_code(num1 - 1);
    }
}

int main(int argc, char** argv)
{
    run_code(10);
}
