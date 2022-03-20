<?php
    function run_code ($number)
    {
        if ($number == 1)
            return 1;
        else {
            $num1 = $number;
            $num2 = $number;
            for ($i = 0; $i < $number * 1000; $i++) {
                $num2 *= $number;
            }
            return $num2 * run_code ($num1 - 1);
        }
    }
    run_code ((float) 10);
?>
