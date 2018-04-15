# if ($t8 < 0) then {$s0 = 0 - $t8; $t1 = $t1 + 1}
#              else {$s0 =  $t8; $t2 = $t2 + 1}

            bgez $t8, positive
            sub $s0, $zero, $t8
            addi $t1, $t1, 1
            j end
positive:
            add $s0, $t8, $zero
            addi $t2, $t2, 1
end: