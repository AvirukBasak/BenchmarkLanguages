function runCode (number)
{
    if (number === 1)
        return 1;
    else
        return number * runCode (number - 1);
}

runCode (100);
