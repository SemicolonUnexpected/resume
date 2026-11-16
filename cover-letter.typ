#import "templates/resume-template.typ": *

#grid(
  columns: (1fr, auto),
  block(text(weight: 700, 2.5em, [#smallcaps[Matthew Gracey]])),
  align(right)[
    m.gracey1409\@gmail.com \
    3 Royal Park Lane, Hillsborough
  ],
)

#line(length: 100%, stroke: 1pt)


Dear Hiring Team,

I’m a third-year Computer Science (integrated masters) student at St Andrews.

For my Operating Systems coursework I implemented a buddy page allocator in C++. Physical memory arrives in misaligned ranges, so I split each one into aligned blocks using __builtin_ctzll and __builtin_clzll, and I made freeing cheaper by merging buddies in a single list traversal instead of repeated passes. .

I used the same approach in a Python modal-logic solver, where I cut exponential search growth by normalising formulae and ordering rules so branches close early. I wrote 94 unit tests with a random input generator so later optimisations could be checked against earlier behaviour, and I validated a DPLL solver in C on a thousand SATLIB instances. That is the regression-testing habit I’d want to apply to compute kernels.

I haven’t yet written numerical kernels, which is where I’d learn the most. My maths background is strong (A\* in Maths and Further Maths, Gold in the Senior Maths Challenge), and I led a team of 15 in the First Tech Challenge, writing PID and odometry control software for competition robots.

[One specific, true reason for Graphcore.]

Thank you for your time.

Matthew Gracey
