# Small Worlds and Large Worlds

```
\l stat.q

```
## 2M1

```
plist: .stat.seq . 100 0 1

```
```
plist

___OUTPUT___
0 0.01010101 0.02020202 0.03030303 0.04040404 0.05050505 0.06060606 0.0707070..

```
```
likelihood: .stat.binomp[;;plist]

```
```
posterior: .stat.stdize likelihood ::

```
```
max posterior . 3 3

___OUTPUT___
0.0396

```
```
max posterior . 3 4

___OUTPUT___
0.021309

```
```
rank posterior . 3 3

___OUTPUT___
0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 ..

```
```
iasc posterior . 3 3

___OUTPUT___
0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 ..

```
```
plist imax posterior . 3 3

___OUTPUT___
`ERROR

```
```
imax posterior . 3 3

___OUTPUT___
`ERROR

```
```
posterior . 3 3

___OUTPUT___
0 4.081216e-08 3.264973e-07 1.101928e-06 2.611978e-06 5.10152e-06 8.815427e-0..

```
```
ppost: plist first idesc posterior ::

```
```
ppost . 3 3

___OUTPUT___
1f

```
```
ppost . 3 4

___OUTPUT___
0.7474747

```
```
ppost . 5 7

___OUTPUT___
0.7171717

```
```
\\

## 2M2

```
\l stat.q

```
```
plist: .stat.seq . 100 0 1

```
```
p2probs: plist >= 0.5

```
```
p2probs

___OUTPUT___
00000000000000000000000000000000000000000000000000111111111111111111111111111..

```
```
likelihood: .stat.binomp[;; plist]

```
```
posterior: .stat.stdize p2probs * likelihood ::

```
```
ppost: plist first idesc posterior ::

```
```
ppost . 3 3

___OUTPUT___
1f

```
```
ppost . 3 4

___OUTPUT___
0.7474747

```
```
posterior . 3 3

___OUTPUT___
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0..

```
```
ppost . 5 7

___OUTPUT___
0.7171717

```
```
\\

