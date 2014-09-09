:Pass :By :Reference

1. Pass By Reference

* When A Variable Name Is Assigned To An Object, The Variable Name Now Points To The Memory Of The Object Intead Of Assinging New Objects Value To Old Oject 
Variable Was Pointing To

x = ['the', 'best']
y = x
x = ['the', 'worst']
# x is now assigned to the memory pointer of ['the', 'worst'], therefore y can still be ['the', 'best'] (its memory location did not change)

* Further More, Methods Like Array[index] Can Be Seen As Array.[]=(index,value) Mutating Method Instead # I dont really get this need to get back

* Completely Unrelated, Ruby Has ||= As A Useful Lazy Valuation Shortcut As Right-Side Of || Does Not Get Evaluated, So It Equals To Update To Right Side Evaluation If Self Does Not Exist
