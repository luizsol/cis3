# $a0 = 0;
#   for($t0 = 10; $t0 > 0; $t0 = t0 - 1) do
#   {$a0 = $a0 + $t0}

          move  $a0,  $zero
          li    $t0,  10
for:
          blez  $t0,  break
          add   $a0,  $a0,  $t0
          addi  $t0,  $t0,  -1
          j     for
break: