

Question
========

A continuous random variable $X$ was measured 61 times. The sorted measurements are shown below.

|   |   |   |   |   |   |   |   |   |   |
|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|
|50.93|50.97|50.99|51.15|51.19|51.53|51.57|51.66|51.67|51.68| 
|51.69|51.69|51.71|51.75|51.86|51.86|51.9|51.92|51.97|51.99| 
|51.99|52.02|52.03|52.05|52.09|52.1|52.14|52.17|52.18|52.23| 
|52.26|52.26|52.27|52.28|52.36|52.39|52.42|52.47|52.53|52.53| 
|52.55|52.56|52.59|52.61|52.66|52.69|52.7|52.74|52.8|52.82| 
|52.83|52.85|52.88|52.9|52.91|52.93|52.93|52.94|52.96|52.96| 
|52.96| 


The total of the measurements is 3185.22.


Answerlist
--------
* Determine the percentile rank of the measurement 52.83. In other words, determine what percent of data are less than or equal to 52.83.
* Determine the measurement corresponding to a percentile rank of 0.984. In other words, determine $x$ such that 98.4% of the data are less than or equal to $x$. 
* Determine the mean of the measurements.
* Determine the median of the measurements.

Solution
========

Let $x$ represent a measurement of interest. Let $i$ represent that measurement's index. Let $\ell$ represent that measurement's percentile. Let $n$ represent the sample size (number of measurements). In general,
$$\ell = \frac{i}{n} $$


Answerlist
--------
* We are given $x = 52.83$. This means $i=51$. We know $n=61$. Determine the percentile $\ell$.
$$\begin{aligned}
\ell &= \frac{51}{61} \\ \\
\ell &= 0.836
\end{aligned}$$
So, the percentile rank is $\fbox{0.836}$, or 83.6th percentile.
* We are given $\ell = 0.984$. We can use algebra to solve for $i$.
$$\ell = \frac{i}{n}$$
Multiply both sides by $n$.
$$n \cdot (\ell) = n \cdot \left(\frac{i}{n} \right)$$
Simplify both sides.
$$ n \ell = i $$
To make me happy, switch the sides.
$$i = n \ell $$
Now, we can evaluate $i$.
$$i = (61)(0.984) $$
$$i = 60$$
Determine the $x$ associated with $i = 60$.
$$x = \fbox{52.96}$$
* The mean: $\bar{x} = \frac{3185.22}{61} = \fbox{52.217}$
* If $n$ is odd, then median is $x_{i=\frac{n+1}{2}}$, the value of $x$ when $i=\frac{n+1}{2}$. Otherwise, if $n$ is even, the median is mean of $x_{ i=\frac{n}{2} }$ and $x_{i= \frac{n}{2}+1 }$. In this case, $n=61$ and so $n$ is odd.
$$\text{median} = x_{(61+1)/2,} = x_{31}$$
So, median = $\fbox{52.26}$.

Meta-information
============
extype: string
exsolution: yup
exname: reading hist
extol: 0.01

