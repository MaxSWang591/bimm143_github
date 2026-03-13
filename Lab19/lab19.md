# lab19
Max Wang

## Importing Data

``` r
library(bio3d)
```

    Warning: package 'bio3d' was built under R version 4.4.3

``` r
data <- read.fasta("A18629546_mutant_seq.fa")
```

``` r
which(conserv(data) != 1)
```

    [1] 542 559 583 605

lollipop graph from the GDC portal using the ProteinPaint program.
