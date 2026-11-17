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

Dear Graphcore Early Careers Team,

I'm a third-year Computer Science (integrated masters) student at the University of St Andrews, applying for the Software Engineer Summer Intern role in AI Compute Libraries & Performance.

In my Operating Systems coursework I implemented a buddy page allocator in C++. Physical memory could arrive in misaligned ranges (due to reserved memory regions), so I split each one into aligned blocks using `__builtin_ctzll` and `__builtin_clzll`. I optimised freeing by merging buddies in a single list traversal instead of repeated passes.

In my AI coursework I wrote an A\* solver for SameGame in Java and benchmarked two heuristics, varying grid size, number of colours and clustering. I optimised the algorithm to cache states and prune unsolvable ones. I reduced nodes explored by 80% on 5 × 5 grids. I modelled the board as a jagged array and shared unchanged memory between boards reducing memory usage. I plotted the results in Typst (with the Lilaq library) showing how the first (admissible) heuristic explored fewer nodes, while finding the solution with the fewest moves.

Additionally, I have experience with Python, C and unit testing. For a Python modal-logic solver I wrote 94 unit tests including a random input generator so later optimisations could be checked against earlier behaviour, and I validated a DPLL solver in C on a thousand SATLIB instances.

I have a strong mathematical background (A\* in Maths and Further Maths, Gold in the Senior Maths Challenge). Furthermore, I enjoy problem solving and have solved 78 Project Euler problems.

I led a team of 15 in the First Tech Challenge where we designed, built and wrote control software (PIDF, odometry control) for competitive robots.

I am interested in this internship as I enjoy making algorithms faster and optimising them. I would like to gain a deeper understanding of numerical validation for algorithms and work on threading-based optimisations. I am also interested in designing algorithms in closer alignment with specific hardware and memory layouts.

Many thanks,

Matthew Gracey
