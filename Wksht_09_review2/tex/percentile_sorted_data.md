

Question
========

A continuous random variable $X$ was measured 27 times. The sorted measurements are shown below.

|   |   |   |   |   |   |   |   |   |   |
|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|
|40.78|46.55|48.21|54.29|54.95|55.8|56.19|61.61|92.92|94.55| 
|95.24|95.47|97.8|100.1|102.7|103.3|107.6|108.8|115.6|119.5| 
|119.9|120.4|122.3|124.2|127.5|129.5|131.8| 


The total of the measurements is 2527.56.


Answerlist
--------
* Determine the percentile rank of the measurement 46.55. In other words, determine what percent of data are less than or equal to 46.55.
* Determine the measurement corresponding to a percentile rank of 0.778. In other words, determine $x$ such that 77.8% of the data are less than or equal to $x$. 
* Determine the mean of the measurements.
* Determine the median of the measurements.

Solution
========

Let $x$ represent a measurement of interest. Let $i$ represent that measurement's index. Let $\ell$ represent that measurement's percentile. Let $n$ represent the sample size (number of measurements). In general,
$$\ell = \frac{i}{n} $$


Answerlist
--------
* We are given $x = 46.55$. This means $i=2$. We know $n=27$. Determine the percentile $\ell$.
$$\begin{aligned}
\ell &= \frac{2}{27} \\ \\
\ell &= 0.0741
\end{aligned}$$
So, the percentile rank is $\fbox{0.0741}$, or 7.41th percentile.
* We are given $\ell = 0.778$. We can use algebra to solve for $i$.
$$\ell = \frac{i}{n}$$
Multiply both sides by $n$.
$$n \cdot (\ell) = n \cdot \left(\frac{i}{n} \right)$$
Simplify both sides.
$$ n \ell = i $$
To make me happy, switch the sides.
$$i = n \ell $$
Now, we can evaluate $i$.
$$i = (27)(0.778) $$
$$i = 21$$
Determine the $x$ associated with $i = 21$.
$$x = \fbox{119.9}$$
* The mean: $\bar{x} = \frac{2527.56}{27} = \fbox{93.613}$
* If $n$ is odd, then median is $x_{i=\frac{n+1}{2}}$, the value of $x$ when $i=\frac{n+1}{2}$. Otherwise, if $n$ is even, the median is mean of $x_{ i=\frac{n}{2} }$ and $x_{i= \frac{n}{2}+1 }$. In this case, $n=27$ and so $n$ is odd.
$$\text{median} = x_{(27+1)/2,} = x_{14}$$
So, median = $\fbox{100.1}$.

Meta-information
============
extype: string
exsolution: yup
exname: reading hist
extol: 0.01

