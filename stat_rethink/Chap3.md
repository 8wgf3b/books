# Sampling the imaginary

## Load stats library

```
\l stat.q

```
## setup Easy premise

```
0N! pgrid: .stat.seq . 1000 0 1

___OUTPUT___
0 0.001001001 0.002002002 0.003003003 0.004004004 0.005005005 0.006006006 0.0..

```
```
0N! pgrid: .stat.seq . 1000 0 1;

```
```
0N! priorprobs: .stat.unifp pgrid;

```
```
0N!likelihood: .stat.binomp[6; 9; pgrid];

```
```
0N! posterior: .stat.stdize likelihood * priorprobs;

```
```
0N! samples: .stat.psr[pgrid; posterior; 1000];

```
### 3E1

```
sum samples < 0.2

___OUTPUT___
0i

```
```
0N! samples: .stat.psr[pgrid; posterior; 10000];

```
```
sum samples < 0.2

___OUTPUT___
5i

```
```
.stat.stdize samples < 0.2

___OUTPUT___
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0..

```
```
avg samples < 0.2

___OUTPUT___
0.0005

```
```
avg samples > 0.8

___OUTPUT___
0.1181

```
```
2 within 2 4

___OUTPUT___
1b

```
```
2 within 2 3

___OUTPUT___
1b

```
```
2 within 1 2

___OUTPUT___
1b

```
```
avg samples within 0.2 0.8

___OUTPUT___
0.8814

```
```
\l stat.q

```
```
0N! samples: .stat.psr[pgrid; posterior; 10000];

```
```
avg samples within 0.2 0.8

___OUTPUT___
0.8754

```
```
avg samples > 0.8

___OUTPUT___
0.1237

```
```
avg samples < 0.2

___OUTPUT___
0.0009

```
```
100 xrank samples

___OUTPUT___
95 98 94 32 6 79 50 59 93 33 16 92 96 69 85 85 83 44 64 58 88 48 28 19 25 25 ..

```
```
count l: 100 xrank samples

___OUTPUT___
10000

```
```
80? l

___OUTPUT___
92 86 60 46 93 9 60 13 31 56 94 83 30 29 16 1 14 96 4 86 15 44 75 57 25 62 0 ..

```
```
l? 80

___OUTPUT___
245

```
```
samples 245

___OUTPUT___
0.7627628

```
```
count where l = 80

___OUTPUT___
100

```
```
avg samples where l = 80

___OUTPUT___
0.7640741

```
```
-100?100

___OUTPUT___
59 87 98 50 27 32 69 89 74 22 17 36 2 42 11 6 41 44 99 46 79 16 71 64 0 57 31..

```
```
a:-100?100

```
```
asc[a] 0.8 count a

___OUTPUT___
`ERROR

```
```
\l stat.q

```
```
.stat.quantile[samples; 0.8]

___OUTPUT___
0.7617618

```
```
\l stat.q

```
```
.stat.PI[samples; 0.66]

___OUTPUT___
0.83| 0.7757758
0.17| 0.4974975

```
## 3M1

```
\l stat.q

```
```
pgrid: .stat.seq . 1000 0 1; pgrid

___OUTPUT___
0 0.001001001 0.002002002 0.003003003 0.004004004 0.005005005 0.006006006 0.0..

```
```
pp: .stat.unifp pgrid; pp

___OUTPUT___
0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001..

```
## 3M2

```
post

___OUTPUT___
`ERROR

```
```
llh: .stat.binomp[8; 15; pgrid]

```
```
post: .stat.stdize llh * pp

```
```
post

___OUTPUT___
0 1.031655e-22 2.622568e-20 6.674306e-19 6.620064e-18 3.91819e-17 1.672921e-1..

```
```
.stat.HDPI .stat.psr[pgrid; post; 10000]

___OUTPUT___
{
    w: "i"$ y * n: count x;
    c: a w + a? b: imax a ! a - (w _ a: asc x),..[0.4964965 0.5345345 0.53453..

```
```
.stat.HDPI[;0.9] .stat.psr[pgrid; post; 10000]

___OUTPUT___
0.3503504 0.7397397

```
```
10?1f

___OUTPUT___
0.3425698 0.4950533 0.360046 0.2700259 0.55515 0.3175674 0.4075894 0.9122916 ..

```
```
0.3 < 10?1f

___OUTPUT___
1101101110b

```
```
sum 0.3 < 10?1f

___OUTPUT___
8i

```
```
3 {x > 3?1f}\ 0.5

___OUTPUT___
0.5
100b
100b
100b

```
```
3 {sum x > 3?1f}\ 0.5

___OUTPUT___
0.5
1i
3i
3i

```
```
3 {x > 3?1f}\ 0.5

___OUTPUT___
0.5
101b
101b
101b

```
```
3 {x > 3?1f}\ 0.5

___OUTPUT___
0.5
011b
011b
011b

```
```
3 {x > 3?1f}\ 0.5

___OUTPUT___
0.5
001b
001b
001b

```
```
3 {sum x > 3?1f}\ 0.5

___OUTPUT___
0.5
2i
3i
3i

```
```
3 {sum x > 3?1f}\ 0.5

___OUTPUT___
0.5
1i
3i
3i

```
```
3 {sum x > 3?1f}\ 0.5

___OUTPUT___
0.5
2i
3i
3i

```
```
3 {sum x > 3?1f}\ 0.5

___OUTPUT___
0.5
1i
3i
3i

```
```
3 {sum x > 3?1f}\ 0.5

___OUTPUT___
0.5
2i
3i
3i

```
```
3 {sum x > 3?1f}\ 0.5

___OUTPUT___
0.5
2i
3i
3i

```
```
3 {sum x > 3?1f}\ 0.5

___OUTPUT___
0.5
2i
3i
3i

```
```
3 {sum x > 3?1f}\ 0.5

___OUTPUT___
0.5
2i
3i
3i

```
```
3 {sum x > 3?1f}\ 0.5

___OUTPUT___
0.5
2i
3i
3i

```
```
12 2 3 > 1

___OUTPUT___
111b

```
```
12 2 3 > 4

___OUTPUT___
100b

```
```
samples: psr[pgrid; post; 10000]

___OUTPUT___
`ERROR

```
```
samples: .stat.psr[pgrid; post; 10000]

```
```
x: .stat.rbinom[15; 10000; samples]

___OUTPUT___
`ERROR

```
```
5#1 2 3

___OUTPUT___
1 2 3 1 2

```
```
100000#samples

___OUTPUT___
0.7147147 0.5955956 0.5575576 0.5175175 0.6586587 0.4614615 0.5625626 0.54754..

```
```
\l stat

___OUTPUT___
`ERROR

```
```
\l stat

___OUTPUT___
`ERROR

```
```
\l stat

___OUTPUT___
`ERROR

```
```
\l stat.q

```
```
samples

___OUTPUT___
0.7147147 0.5955956 0.5575576 0.5175175 0.6586587 0.4614615 0.5625626 0.54754..

```
## 3M3

```
avg 8 = .stat.rbinom[15; 10000; samples]

___OUTPUT___
0.1449

```
```
avg 6 = .stat.rbinom[9; 10000; samples]

___OUTPUT___
0.1766

```
## 3M5

```
count pgrid > 0.5

___OUTPUT___
1000

```
```
sum pgrid > 0.5

___OUTPUT___
500i

```
```
pp: 0.5 * pgrid > 0.5

```
```
sum 0.5 = pp

___OUTPUT___
500i

```
```
post: .stat.stdize likelihood * pp

___OUTPUT___
`ERROR

```
```
likelihood

___OUTPUT___
`ERROR

```
```
llh

___OUTPUT___
0 6.441396e-21 1.637466e-18 4.16727e-17 4.133403e-16 2.44642e-15 1.04453e-14 ..

```
```
post: .stat.stdize llh * pp

```
```
post

___OUTPUT___
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0..

```
```
s: .stat.psr[pgrid; post; 10000]

```
```
s

___OUTPUT___
0.5925926 0.6966967 0.6866867 0.5775776 0.5095095 0.5525526 0.5805806 0.60660..

```
```
.stat.HDPI[s; 0.9]

___OUTPUT___
0.4994995 0.7087087

```
```
avg 8 = .stat.rbinom[15;10000;s]

___OUTPUT___
0.1665

```
```
avg 6 = .stat.rbinom[9;10000;s]

___OUTPUT___
0.2351

```
```
\\

```
