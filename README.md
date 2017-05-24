[![Travis-CI Build Status](https://travis-ci.org/JohnCoene/fiveline.svg?branch=master)](https://travis-ci.org/JohnCoene/fiveline)

# fiveline

![five-line](https://s3-us-west-2.amazonaws.com/fiveline/media/twitter.png)

fiveline is an R integration of the [five-line](http://www.five-line.org/) API.

[five-line](http://www.five-line.org/) collects the bawdiest and smutiest limericks out there; this package lets you easily include limericks in your Rmarkdown package or Shiny apps, because why not?

## Installation

You can install fiveline from github with:

```R
# install.packages("devtools")
devtools::install_github("JohnCoene/fiveline")
```

## Authentication

Simply visit [five-line](http://www.five-line.org/) and create an account then use your credentials in `fl_auth`, see example below.

## Example

```R
fl_auth("username", "password") # authenticate
categories <- list_cat() # get all categories
cat <- get_cat(categories$id[1]) # get limericks in first category
lim <- get_lim(cat$id[1]) # get limerick
```
