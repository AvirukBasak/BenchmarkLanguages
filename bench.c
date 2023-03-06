int run_code(int number)
{
    if (number == 1)
        return 1;
    else {
        int num1 = number;
        int num2 = number;
        for (int i = 0; i < number * 1000; i++) {
            num2 *= number;
        }
        return num2 * run_code(num1 - 1);
    }
}

int main(int argc, char** argv)
{
    run_code(10);
}
