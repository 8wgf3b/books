# K-Means

## Load stuff

```
\cd ../funq

```
```
\l funq.q

```
```
\l iris.q

```
```
\cd ../books

```
```
\pwd

___OUTPUT___
"/home/ubuntu/Documents/books"

```
## K-Means Example

```
iris

___OUTPUT___
  | ::
f | "bezdekIris.data"
b | "http://archive.ics.uci.edu/ml/machine-learning-databases/iris/"
XY| (5.1 4.9 4.7 4.6 5 5.4 4.6 5 4.4 4.9 5.4 4.8 4.8 4.3 5.8 5.7 5.4 5.1 5.7 ..
X | (5.1 4.9 4.7 4.6 5 5.4 4.6 5 4.4 4.9 5.4 4.8 4.8 4.3 5.8 5.7 5.4 5.1 5.7 ..
Y | ,`Iris-setosa`Iris-setosa`Iris-setosa`Iris-setosa`Iris-setosa`Iris-setosa..
y | `Iris-setosa`Iris-setosa`Iris-setosa`Iris-setosa`Iris-setosa`Iris-setosa`..
c | `slength`swidth`plength`pwidth`species
t | +`species`slength`swidth`plength`pwidth!(`Iris-setosa`Iris-setosa`Iris-se..

```
```
X: iris.X

```
```
X

___OUTPUT___
5.1 4.9 4.7 4.6 5   5.4 4.6 5   4.4 4.9 5.4 4.8 4.8 4.3 5.8 5.7 5.4 5.1 5.7 5..
3.5 3   3.2 3.1 3.6 3.9 3.4 3.4 2.9 3.1 3.7 3.4 3   3   4   4.4 3.9 3.5 3.8 3..
1.4 1.4 1.3 1.5 1.4 1.7 1.4 1.5 1.4 1.5 1.5 1.6 1.4 1.1 1.2 1.5 1.3 1.4 1.7 1..
0.2 0.2 0.2 0.2 0.2 0.4 0.3 0.2 0.2 0.1 0.2 0.2 0.1 0.1 0.2 0.4 0.4 0.3 0.3 0..

```
```
cplt: .ut.plt .ml.append[0N; -2#X],' .ml.append[1] -2#

```
```
cplt C: .ml.forgy[3] X

___OUTPUT___
3| "                   "
 | "             ....  "
 | "             .... ."
2| "            ......."
 | "          @... .   "
 | "        ..@..@.    "
1| "      ....         "
 | " .                 "
 | "...                "
0| "...                "

```
```
C

___OUTPUT___
6.7 6.5 5.4
3   2.6 2.8
4.4 5.1 4.3
1.3 1.3 1.5

```
```
.ml.cgroup[.ml.edist2; X] C

___OUTPUT___
0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 ..
50 51 52 54 56 58 65 71 74 75 76 85 86 91 97
63 68 72 73 77 83 87 100 101 102 103 104 105 107 108 109 110 111 112 115 116 ..

```
```
mplt: .ut.plot[19;10;.ut.c10;.ml.mode] (-2#X), enlist .ut.ugrp ::

```
```
mplt .ml.cgroup[.ml.edist2; X] C

___OUTPUT___
3| "                   "
 | "             .@@@  "
 | "             @@@@ @"
2| "            .@@@@@@"
 | "          .+@@ @   "
 | "        ...++ @    "
1| "      ....         "
 | " .                 "
 | "...                "
0| "...                "

```
```
cplt C: .ml.kmeans[X] C

___OUTPUT___
3| "                   "
 | "             ....  "
 | "             .... ."
2| "            ..@...."
 | "          .... .   "
 | "        ...@. .    "
1| "      ....         "
 | " .  @              "
 | "...                "
0| "...                "

```
```
mplt .ml.cgroup[.ml.edist2; X] C

___OUTPUT___
3| "                   "
 | "             @@@@  "
 | "             @@@@ @"
2| "            +@@@@@@"
 | "          ++++ @   "
 | "        +++++ @    "
1| "      ...+         "
 | " .                 "
 | "...                "
0| "...                "

```
```
show C:.ml.kmeans[X] over C

```
```
mplt .ml.cgroup[.ml.edist2;X] C

___OUTPUT___
3| "                   "
 | "             +@@@  "
 | "             @@@@ @"
2| "            ++@@@@@"
 | "          ++++ @   "
 | "        +++++ @    "
1| "      ++++         "
 | " .                 "
 | "...                "
0| "...                "

```
```
iris

___OUTPUT___
  | ::
f | "bezdekIris.data"
b | "http://archive.ics.uci.edu/ml/machine-learning-databases/iris/"
XY| (5.1 4.9 4.7 4.6 5 5.4 4.6 5 4.4 4.9 5.4 4.8 4.8 4.3 5.8 5.7 5.4 5.1 5.7 ..
X | (5.1 4.9 4.7 4.6 5 5.4 4.6 5 4.4 4.9 5.4 4.8 4.8 4.3 5.8 5.7 5.4 5.1 5.7 ..
Y | ,`Iris-setosa`Iris-setosa`Iris-setosa`Iris-setosa`Iris-setosa`Iris-setosa..
y | `Iris-setosa`Iris-setosa`Iris-setosa`Iris-setosa`Iris-setosa`Iris-setosa`..
c | `slength`swidth`plength`pwidth`species
t | +`species`slength`swidth`plength`pwidth!(`Iris-setosa`Iris-setosa`Iris-se..

```
```
flip (4#iris.c)!C

___OUTPUT___
slength  swidth   plength  pwidth  
-----------------------------------
5.006    3.428    1.462    0.246   
5.901613 2.748387 4.393548 1.433871
6.85     3.073684 5.742105 2.071053

```
```
\\

```
