fn run_code(number: i32) -> i32
{
    if number == 1 {
        return 1;
    } else {
        let num1 = number;
        let mut num2 = number;
        for _i in 0..(number * 1000) {
            num2 *= number;
        }
        return num2 * run_code(num1 - 1);
    }
}

fn main()
{
    run_code(10);
}
