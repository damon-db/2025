---
title: "Keynote & Invited Talks"
weight: 4
theme: "damon-dark"
---

# Keynote & Invited Talks

## Keynote Talk
### Building Portable, Low-Latency Query Compilers
<h4 style="text-align: center;">Thomas Neumann, TU Munich</h4>

![Potrait of David Patterson](/img/thomas_neumann.jpg)

**Abstract**: Compiling SQL queries into native machine code is appealing due to the elimination of interpretation overhead and the potential for highly efficient execution. However, there are concerns regarding code complexity, compilation time, and portability across hardware platforms. In this talk, we will demonstrate that it is possible to build a low-latency query compiler by factoring out the complex components, implementing them only once. The platform-specific components are then relatively straightforward, facilitating the targeting of new hardware platforms. Compared to traditional compiler backends, this approach achieves nearly the same execution speed while significantly reducing compilation times, thereby greatly improving overall query latency.

<details>
  <summary>About the Speaker</summary>
  Thomas Neumann is a full professor in the Department of Computer Science
at the Technical University of Munich. After his PhD in Computer Science
at the University of Mannheim in 2005, he was Senior Researcher at the
Max-Planck Institute for Informatics in Saarbrücken until 2010. His
research interests are in the areas of database systems, query
processing, and query optimization. He received the VLDB Early Career Award
in 2014, an ERC Consolidator Grant in 2016, and the Gottfried Wilhelm Leibniz Prize in 2020.
</details>

--- 

## Fresh Thinking Talk

### The Power of an Instruction
<h4 style="text-align: center;">Michal Friedman, ETH Zurich</h4>

![Potrait of David Patterson](/img/michal_friedman.jpg)

**Abstract**: Over the past few decades, the evolution of instructions, serving as the primary interface exposed by new hardware architectures, has significantly influenced how we write and optimize software. These instructions have even become so deeply embedded in libraries and abstractions that they are often invisible to the typical programmer.

Yet, selecting and leveraging the right instructions can have a substantial impact on both performance and correctness of the systems built on top of them. In this talk, I will explore the influence of modern instruction set extensions such as AVX for vectorized computation, CLFLUSH for cache management, and PREFETCH for reducing memory latency, and how they shape algorithm design, data layout and system behaviour.

Furthermore, I will outline potential advancements including mechanisms like eliminating redundant cache flushes and introducing multi-word compare-and-swap operations. We will explore how such extensions could simplify synchronization and reduce overhead, particularly in disaggregated and high-concurrency environments. These proposals aim to push the boundaries of what low-level primitives can offer, demonstrating how the smallest units of computation can impact on how we design and reason about modern systems.

<details>
  <summary>About the Speaker</summary>
  Michal Friedman is an Assistant Professor at the Systems Group at the department of Computer Science of ETH Zurich. Her research interests include systems, concurrent computing, programming languages and sustainable computing. Her research focuses on designing system fundamentals, across software and hardware, to improve the performance and efficiency while guaranteeing correctness of next-generation computing platforms and emerging technologies. Prior to that, she did a postdoc at the System Group. She completed her Ph.D. in Computer Science at the Technion and was generously supported by the Azrieli Foundation Fellowship. She completed her BSc summa cum laude at the Computer Science Department at the Technion as well.
</details>

--- 

## Industry Talk

### Title Coming Soon
<h4 style="text-align: center;">Carlo Curino, Microsoft Jim Gray Labs</h4>

**Abstract**: Coming soon

<details>
  <summary>About the Speaker</summary>
  Coming soon.
</details>

--- 

## Sponsor Talk

### Improving the Performance of the Vector Engine Index in SAP HANA
<h4 style="text-align: center;">SAP</h4>

**Abstract**: SAP HANA Cloud features a Vector Engine for use in Retrieval-Augmented Generation (RAG) to improve the quality of response of AI-powered business applications using external knowledge. We share results of the micro-architectural analysis of the index construction time.  Based on this analysis we share how tuning the code significantly improved the performance of index construction.  Key to these improvements were NUMA optimizations and harnessing the memory prefetcher of modern Intel CPUs.

<details>
  <summary>About the Speaker</summary>
  Coming soon.
</details>
