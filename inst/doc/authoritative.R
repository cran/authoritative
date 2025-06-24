## -----------------------------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## -----------------------------------------------------------------------------
library(authoritative)

## -----------------------------------------------------------------------------
parse_authors("Ada Lovelace and Charles Babbage")
parse_authors("Ada Lovelace, Charles Babbage")
parse_authors("Ada Lovelace with contributions from Charles Babbage")
parse_authors("Ada Lovelace, Charles Babbage, et al.")

## -----------------------------------------------------------------------------
auts <- parse_authors_r("c(
  person('Ada Lovelace', role = c('aut', 'cre'), email = 'ada@email.com'),
  person('Charles Babbage', role = 'aut')
)")

class(auts)

str(auts)

print(auts)

## -----------------------------------------------------------------------------
format(auts, include = c("given", "family"))

## -----------------------------------------------------------------------------
expand_names(c("Ada Lovelace", "A Lovelace"), expanded = "Ada Lovelace")

## -----------------------------------------------------------------------------
my_names <- c("Ada Lovelace", "A Lovelace", "Charles Babbage")
expand_names(my_names, my_names)

