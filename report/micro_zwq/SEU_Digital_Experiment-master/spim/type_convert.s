.data

number: .double 1.3

.text

l.s $f2, number

main:
    l.d     $f0, fp1
    l.d     $f1, fp2

    mtc1    $a0, $f1
    cvt.d.w $f1, $f1
    div.d   $f3, $f1, $f2
    cvt.w.d $f3, $f3
    mfc1    $s2, $f3
