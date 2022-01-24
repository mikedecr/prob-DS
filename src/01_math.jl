using Gadfly

# -----------------------------------------------------
#   Series
# -----------------------------------------------------

# ------ geometric series -------

# probability of first heads after n flips

π = 0.5
n = 1:10
p = π .^ n

plot(x = n, y = p, Geom.bar)

# ------ binomial coef -------

n = 10
k = 2
factorial(k)
binomial(n, k)

# ------ binomial theorem -------

# params
a = 1
b = 21
n = 3

# as a binomial
(a + b)^n

# as a series \sum_k=0^n choose(n,k) a^....
sum(binomial(n, k) * (a^(n - k)) * (b^k) for k in 0:n)


# -----------------------------------------------------
#   Linear algebra
# -----------------------------------------------------

# ------ innter product -------

x = [1, 0, -1]
y = [3, 2, 0]
x'y

# ------ norm -------

using LinearAlgebra
const la = LinearAlgebra

x = [1, 0, -1]
la.norm(x)

# ------ l2 & weighted norm -------

x = [2, -1, 1]
v = x'x

W = [1. 2. 3.
     4. 5. 6. 
     7. 8. 9.]
z = x'W*x
