function runCode(number)
{
    if (number === 1)
        return 1;
    else {
        let num1 = number;
        let num2 = number;
        for (let i = 0; i < number * 1000; i++) {
            num2 *= number;
        }
        return num2 * runCode(num1 - 1);
    }
}

runCode(10);
