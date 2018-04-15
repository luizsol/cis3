# while($a1 < $a2) do
#   {$a1 = $a1 + 1;
#    $a2 = $a2 - 1;}

while:
        bge   $a1,  $a2,  break
        addi  $a1,  $a1,  1
        addi  $a2,  $a2,  -1
        j     while
break: