# Lab06
Max Wang (PID A18629546)

- [Background](#background)
- [First exploration with functions in
  R](#first-exploration-with-functions-in-r)
- [Second function](#second-function)
- [Third function](#third-function)

## Background

Functions act to condense code into simple, repeatable calls to lines of
code which makes up the heart of R.

All functions in R have 3 components:

1.  A **name** to call functions
2.  One or more **arguments** that are fed into the function separated
    by commas
3.  The **body** of the function, lines of code that describe what the
    function does

## First exploration with functions in R

Writing a function that adds 1 to arg x

``` r
add <- function(x) {
  x + 1 
}

add(2)
```

    [1] 3

Imputing a different object types

``` r
add(c(100,200,300))
```

    [1] 101 201 301

Modified function to add arg x to arg y

``` r
add <- function(x,y) {
  x + y
}

add(3,5)
```

    [1] 8

Creating default arguments

``` r
add <- function(x = 0,y = 0) {
  x + y
}

add(5)
```

    [1] 5

``` r
add(y = 5)
```

    [1] 5

**N.B.** Input arguments can be either required or optional based on if
they have a default value set. This allows functions to select which
arguments are necessary to be input and which ones are not while
automatically assigning values to unspecified arguments.

## Second function

All functions in R have the same basic format:

    name <- function(arg, arg) {
      body
    }

The `sample()` function in R takes a random sample from a vector with n
of size `size`. Additionally, the sample function takes arguments
`replace` and `prob` which define if the sample takes with or without
replacement and the probability for each value described in a vector.

``` r
  sample(1:50, 20, replace = T)
```

     [1] 35 14 40 41 31 27 38 31 17 49  7 37 16 47 38 14 22 40 36 23

``` r
  #outputs a random sample of n = 20 from a vector of integers 1 to 50 with replacement
```

> Q. Return 12 numbers picked randomly from the input 1:10

``` r
  sample(1:10, 12, replace = T)
```

     [1] 6 8 1 5 8 8 4 7 4 9 3 5

``` r
  #requires replace = T since size > length(x)
```

> Q. Write the code to generate a 12 nt long DNA sequence.

``` r
seq <- sample(c("A", "T", "G", "C"), 12, T)
cat(seq, sep = "")
```

    GTTGGAGCTGTG

> Q. Write a first version function called `generate_dna()` that
> generates a user specified length `n` random DNA sequence

> Q. Modify the output to return a FASTA like sequence rather than a
> vector output

``` r
generate_dna <- function(n){
  seq = sample(c("A", "T", "G", "C"), n, T)
  return(paste(seq, collapse = ""))
  ## similar output as using cat(seq, sep = "")
}
```

``` r
generate_dna(25)
```

    [1] "TGAAAGCAGATGACGTTAATATGAC"

Adding the option to return as a FASTA format or a vectorized output

``` r
generate_dna <- function(n, fasta = T){
  seq = sample(c("A", "T", "G", "C"), n, T)
  
  if (fasta){
    return(paste(seq, collapse = ""))
  }
  
  else{
    return(seq)
  }
}
```

``` r
generate_dna(25) #FASTA format
```

    [1] "TGACGCTATCTGAGAACTTTTAGGA"

``` r
generate_dna(25,F) #vector format
```

     [1] "C" "C" "G" "C" "C" "A" "G" "A" "C" "C" "G" "A" "C" "A" "T" "G" "C" "A" "A"
    [20] "G" "C" "T" "C" "T" "C"

## Third function

> Q. Write a function called `generate_protein()` that generates a user
> specified length proteins equeince in FASTA like format

``` r
generate_protein <- function(n){
  aas <- c("A", "G", "V", "L", "I", "P", "F", "Y", "W", "S", "T", "C", "M", "D", "E", "K", "R", "H", "N", "Q")
  seq <- sample(aas, n, T)
  seq <- paste(seq, collapse = "")
  return(seq)
}
```

``` r
generate_protein(15)
```

    [1] "KKKDRGSSPLPRNTT"

> Q. Use your new `generate_protein()` function to generate sequences
> betweene length 6 and 12 amino acids in length and check if anyh of
> these are unique in nature (using NR in NCBI database)?

``` r
#using a for loop
for(i in 6:12){
  cat(">", i, "\n", sep = "")
  cat(generate_protein(i), "\n")
}
```

    >6
    RNMMAD 
    >7
    MIVVFDD 
    >8
    GTWWCVWP 
    >9
    HTKKNFEDR 
    >10
    WDKLDFQIYC 
    >11
    KAAPDNSVYKN 
    >12
    CYWIGTQQIFKD 
