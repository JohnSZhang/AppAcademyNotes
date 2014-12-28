Chapter One - Three

* what procdecures really are are abstractions that describe compound operations independent of the numbers provided. it is useful for a lanaguage to set up a machanism to assign values to these procedures so we can abstract them. :higher-order :procdures, on the other hand, are procedures that can manipulate other procedures.

1. Procedures as Arguments
(define (<name> a b)
    (if (> a b)
      0
      (+ (<term> a)
      (<name> (<next> a) b))))

the above is the generalized form of a function that takes a function and find the sum of that function applied from a to b. translated, the above becomes

(define (sum term a next b)
    (if (> a b)
    0
    (+ (term a)
      (sum term (next a) next b))))
