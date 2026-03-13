# Lab15
Max Wang

## Background

**Git** is an installable version control program which stores
information about version history within a document. This is useful in
tandem with online git repositories like **github**, allowing for
elegant offline collaboration and removes the necessity of servers to
host projects. Through the github api, snapshots can be pushed directly
through programming languages like R using user tokens.

The core steps to use git:

1.  Imitate a git repository

> in R studio you can click the radio button on project creation or type
> `git init` in the comand line

2.  Add to the project, adding files, modifying files, etc

3.  Add important files to the **stage** which holds files to be
    committed

> in R studio you chcek “staged” checkmark in the git tab next to the
> enviroment. in the command line you can type `git add filename`

4.  Commit files into the git repository

> in R studio, hit the “commit” buttion in the git tab. in the comand
> line type `git commit - m "messege"`

5.  With github you can push commits into the online git repositories.
    In command line type `git push`.

6.  Furthermore, with changes in the repo, you can pull into your
    personal computer via the pull buttion. In the command line type
    `git pull`

## Using Github API

Using the `usethis` library we can create a Personal Access Token (PAT)

``` r
library(usethis)
```

    Warning: package 'usethis' was built under R version 4.4.3

``` r
#create_github_token() directs to a web page to create a PAT
```

Creating a github personal access token using the `gitcreds` library

``` r
library(gitcreds)
```

    Warning: package 'gitcreds' was built under R version 4.4.3

``` r
# gitcreds_set()
```
