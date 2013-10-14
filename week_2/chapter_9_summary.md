##Chapter 9
##### -George

###Nested Assignments
treats the parenthesis items as one part of the array
a, b, (c, d), e = 1, 2, 3, 4, 5  >>> a=1 b=2 c=3 d=nil e=4

###Splats *
rhs takes values out
= *(1..5), 6, 7, [8, 9]  >>> = 1,2,3,4,5,6,7,8

lhs (only one value may be splat)
soaks up r values until one r value is remaining for each other lhs value even if that value is nil

a, *b, c = 1, 2, 3, 4, 5  >>> a = 1, b = [2, 3, 4], c = 5

###booleans

#####&& or and 
return first value if false and return true only if both values are true
nil && 99 >>> nil
0 && 99 >>> 0

#####| | and or 
return first argument UNLESS it is false and returns false only if both false

#####defined? 
returns description of the argument (or nil if not defined)

## Questions
=== compare each of the items with the target in the "WHEN" clause of a "CASE" statement  ??? I don't understand this
