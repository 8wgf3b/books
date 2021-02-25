\d .stat


/ x -> size of sequence
/ y -> from included
/ z -> to included
seq: {y + %[z - y; x - 1] * til x}

getbw: {x + 1 + til y - x}

ncr: {
    $[
        any y = 0, x; :1;
        any y = 1, x - 1; :x;
        :prd[getbw[x - m; x]] % prd 1 + til m: min y, x - y
        ]
    }

unifp: {c # 1 % c: count x}

binomp: {ncr[y; x] * xexp[1 - z; y - x] * xexp[z; x]}

stdize: {x % sum x}
