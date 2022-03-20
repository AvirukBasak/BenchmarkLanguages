int run_code (int number)
{
    if (number == 1)
        return 1;
    else
        return number * run_code (number - 1);
}

int main (int argsc, char *argsv[])
{
    run_code (100);
}
