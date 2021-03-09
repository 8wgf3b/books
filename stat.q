\d .stat


/ x -> size of sequence
/ y -> from included
/ z -> to included
seq: {y + %[z - y; x - 1] * til x}

/ y -> end number
/ x -> start number
getbw: {x + 1 + til y - x}

/ x -> n
/ y -> r
ncr: {
    $[
        any y = 0, x; :1;
        any y = 1, x - 1; :x;
        :prd[getbw[x - m; x]] % prd 1 + til m: min y, x - y
        ]
    }

/ x -> list
unifp: {c # 1 % c: count x}

/ x -> r
/ y -> n
/ z -> p
binomp: {ncr[y; x] * xexp[1 - z; y - x] * xexp[z; x]}

stdize: {x % sum x}

imax: {x? max x}
imin: {x? min x}

/ (p)robability (s)ampling with (r)eplacement
/ x -> random variable
/ y -> probabilites
/ z -> size
psr: {bin[;z?1.] x ! `s#sums y}

/ x -> list
/ y -> quantile (<1)
quantile: {asc[x] "i"$ y * count x}

/ (P)robability (I)nterval
/ x -> list
/ y -> probability
PI: {q! quantile[x] each q: (1 - l), l: 0.5 * 1 - y}


/ x -> list
/ y -> probability
HDPI: {
    w: "i"$ y * n: count x;
    c: a w + a? b: imax a ! a - (w _ a: asc x), w# 0N;
    b, c
    }

