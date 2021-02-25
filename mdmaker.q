\l opt.q


c: .opt.config
c,: (`floc; `:Untitled.md; ".md file loc")
c,: (`ap; 1b; "append to the file")


p: .opt.getopt[c; `floc] .z.x

if[`help in key p; -1 .opt.usage[1_c; .z.f]; exit 1]
if[not p `ap; @[hdel; p `floc; `NoFile]] 

file: hopen p `floc

.z.pi: {
    $["/" = first x; :neg[file] 2_x; "\\\\" ~ first 2#x; :exit 1];
    neg[file] "```\n", x;
    show ans: @[value; x; `ERROR];
    if[count a: .Q.s ans; neg[file] "___OUTPUT___\n", a];
    neg[file] "```";
    }

.z.exit: {hclose file; 0N! "Saved session at ", string p `floc;}

