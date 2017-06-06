[![Travis-CI Build Status](https://travis-ci.org/JohnCoene/fiveline.svg?branch=master)](https://travis-ci.org/JohnCoene/fiveline)
[![CRAN\_Status\_Badge](https://www.r-pkg.org/badges/version/fiveline)](https://cran.r-project.org/package=fiveline)

# fiveline

![five-line](https://s3-us-west-2.amazonaws.com/fiveline/media/twitter.png)

fiveline is an R integration of the [five-line](http://www.five-line.org/) API.

[five-line](http://www.five-line.org/) collects the bawdiest and smutiest limericks out there; this package lets you easily include them in your Rmarkdown package or Shiny apps, because why not?

## Installation

You can install fiveline from github with:

```R
# install.packages("devtools")
devtools::install_github("JohnCoene/fiveline")
```

## Documentation

* [API documentation](http://www.five-line.org/api/docs/)
* [Package documentation](http://john-coene.com/five-line)

## Authentication

Simply visit [five-line](http://www.five-line.org/) and create an account then use your credentials in `fl_auth`, see example below.

## Example

```R
fl_auth("username", "password") # authenticate
categories <- list_cat() # get all categories
cat <- get_cat(categories$id[1]) # get limericks in first category
lim <- get_lim(sample(cat$id, 1)) # get random limerick from category
insert_lim(lim) # insert in Rmarkdown
```

##### A bather

A bather whose clothing was strewed
By winds that left her quite nude,
Saw a man come along
And unless I am wrong,
You expect this line to be lewd.
