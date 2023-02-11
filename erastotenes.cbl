identification division.
program-id. erastotenes.

data division.
    working-storage section.
        78 table-size value 99.
        01 primes.
            05 crossed pic 9(1) value 0 occurs table-size times indexed by i.
        01 n pic 9(2).
        01 2n pic 9(2).

procedure division.
    perform cross-every-nth varying n from 2 by 1 until n * n > table-size.
    perform display-primes varying i from 1 by 1 until i > table-size.
stop run.
    
cross-every-nth.
    compute 2n = 2 * n
    perform cross-ith varying i from 2n by n until i > table-size.

cross-ith.
    move 1 to crossed(i).
    
display-primes.
    if crossed(i) = 0 then
        display i
    end-if.