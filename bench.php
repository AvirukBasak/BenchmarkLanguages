<?php
    function run_code ($number)
    {
        if ($number == 1) {
            return 1;
        } else {
            return $number * run_code ($number - 1);
        }
    }
    run_code (100);
?>
