# 1. Introduction

The first chapter is relatively small. There are no programming assignments here. Apart from a select few, most problems are quite straight-forward.

## Readings

:::note
* CLRS 3.1 Asymptotic notation
* CLRS 4.3--4.6 Solving recurrences

* [MIT OCW 6.042J](https://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-042j-mathematics-for-computer-science-fall-2010/index.htm) _Mathematics for Computer Science_ by Leighton and Dijk
	*  Lecture 14: Divide and Conquer Recurrences
	*  Lecture 15: Linear Recurrences
:::

### Asymptotic notation

* Definitioins of $O,\ \Omega,\ \Theta,\ o,$ and $\omega$
* Meaning of Asymptotic notation
	*  It represents a class of functions
	*  It's meaning when used in equations

### Solving recurrences

The methods for solving recurrences are:

*  Guess and verify by induction
*  Substitution Method a.k.a. Plug and Chug
*  Recursion Tree Method
*  Master Theorem
*  Akra-Bazzi Theorem

## Problems

### 1

~~~c
count = lg(n) - 2
~~~

### 2. Prove These

The way to solve these is to find constants, $c$ and $n_0$ such that the conditions of $O$ notation are met.

#### (a) $\frac{n(n-1)}{2}$ is $O(n^2)$

Consider any $n_0 \geq 1$ and $c = 1$. This holds true.

#### (b) $max(n^3, 10n^2)\ is\ O(n^3)$

$n_0 \geq 11$ and $c = 1$.

#### (c) $\sum_{i=1}^{n} i^k$ is $O(n^{k+1})\ and\ \Omega(n^{k+1})$ for integer $k$

**Part 1:** $\sum_{i=1}^{n} i^k = 1^k + 2^k + \dots + n^k$.
We can then say this 
$\leq n^k + n^k + \dots + n^k \leq n^{k+1}$. And thus this is $O(n^{k+1})$ 

**Part 2:** $Let S = \sum_{i=1}^{n} i^k = 1^k + 2^k + \dots + n^k$.
We can reduce the value of each term in the following manner.
$S \geq 1^k + 2^k + 2^k + 3^k + 3^k + 3^k + \dots + a.a^k$ for some $a$.
$\implies S \geq 1.1^k + 2.2^k + 3.3^k + \dots + a.a^k$

Now to find the value of $a$. The total number of terms originally is $n$. Thus summing the number of time each distinct term now repeats, $1 + 2 + 4 + 8 + \dots + a = n$. Let the number of terms now be $x$. Since this is a geometric series we get $\frac{2^x - 1}{2-1}$. And this is equal to $n$. $x = lg(n+1)$ and $a = 2^{x -1}$. Thus $a = \frac{n+1}{2}$.

Now we can say $S \geq a^{k+1} = (\frac{n+1}{2})^{k+1} = \Omega(n^{k+1})$

**Alternate Way:** [Faulhaber's formula](https://en.wikipedia.org/wiki/Faulhaber%27s_formula) $\sum_{k=1}^{n} k^p = \frac{n^{p+1}}{p+1} + \frac{n^p}{2} + \sum_{k=2}^{p} \frac{B_k}{k!} p^{\underline{k-1}} n^{p-k+1}$ where $p^{\underline{k-1}} = (p)_{k-1} = \frac{p!}{(p-k+1)!}$ is a falling factorial. Using this we get $\sum_{i=1}^{n} i^k= \Theta(n^{k+1})$.

#### (d)

$p(x) = \sum_{i=0}^{k} a_i x^i$ where $a_k > 0$. Consider $a_{max} = max([a_i])$. Let $h(x) = \sum_{i=0}^{k} a_{max} x^i$. Then $p(x) \leq h(x) \leq ka_{max}x^k = O(x^k)$

:::bad
part 2 of proving lower bound remains
:::

### 3. Which grows faster?

**(a)** $(log\ n)^n$ grows faster on account of having the larger term as the power.

:::note
Make use of Sterling's approximation
:::

**(b)** $(log\ n)^k$ grows faster.

**(c)** $(log\ n)!$ grows faster.

**(d)** $n!$ grows faster.

### 4. $f_1(n) + f_2(n)$
It's given that $f_1(n) is O(g_1(n))$ and $f_2(n) is O(g_2(n))$. WLOG let's say that $f_1$ grows asymptotically faster, and thus $O(max(g_1(n), g_2(n))) = O(g_1(n))$. This means $f_2$ is also $O(g_1)$. Thus there exist constants $n_0$ and c for which both $f_1 \leq g_1$ and $f_2 \leq g_2$ is true for all $n \geq n_0$. $f_1 + f_2 \leq 2cg_1 = O(g_1)$. ☐

### 5.

### 6.

### 7.

### 8.

### 9.

### 10.

### 11.
:::good
You'll have to finish this fast.
:::
