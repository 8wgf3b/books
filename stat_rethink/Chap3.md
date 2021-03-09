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
