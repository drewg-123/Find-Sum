

#"------------  Get sum of threes --------------------------"
$a = 0 #sum of threes
$m = 0 #mod of five and 0 (duplicates)
$numThreesInOneThou  = [int](1000 - (1000 % 3)) / 3

#add sum of threes by number of divisors
for ($c = 0; $c -le $numThreesInOneThou; $c++) {
    $a = $a + 3
    # count the number of duplicates
    if ( $a % 5 -eq 0 ) {
        $m++
    }
}
[int]$aSum = ($a * $numThreesInOneThou )/2

#"-----------  Get sum of fives ---------------------------"
$b = 0
$j = 0
$numFivesInOneThou  = [int](($numThreesInOneThou *3) - (($numThreesInOneThou * 3) % 5)) / 5

#add sum of fives by number of divisors
for ($c = 0; $c -le $numfivesInOneThou; $c++) {
    $b = $b + 5
} 
[int]$bSum = ($b * $numfivesInOneThou)/2

#"-----------  Calculate matching sums ---------------------------"
$lcd = 3 * 5 # lease common denominator

#calculate the sum of times three and five number match
[int]$sumMatches = ($m * (990 + $lcd))/2

#Final calculations of sums
$sumOfNumbers = $aSum + $bSum - $sumMatches

write-host $sumOfNumbers
