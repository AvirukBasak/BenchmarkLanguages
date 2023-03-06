def run_code(number):
    if number == 1:
        return 1
    else:
        num1 = number
        num2 = number
        for i in range (0, int(number * 1000)):
            num2 *= number
        return num2 * run_code(num1 - 1)

run_code(float(10))
