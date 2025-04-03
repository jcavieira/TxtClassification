###########################################################
#################   Text Manipulation   ###################
###########################################################

## Regular Expressions: https://stringi.gagolewski.com/weave/regular_expressions.html

# packages:
require(stringr)
require(magrittr)
require(dplyr)

# database:
bd_txt <- data.frame("name" = readRDS("F:/PPA_Classification/base_texto.rds") )

# length of database:
nrow(bd_txt)

# number of character of each item:
bd_txt$name %>% str_length()

# number of words:
bd_txt$name %>% str_count(pattern = "\\S+") %>% sort

# filter string that have more than 25 words
txt <- bd_txt %>% filter(str_count(name, "\\S+") > 25)

# which strings with "Gamer":
txt$name[txt$name %>% str_detect(pattern = "Gamer")]

# making strings lowercase:
txt$name %>% str_to_lower()

# removing extra blank spaces between words:
txt$name %>% str_trim()

# removing an item of a string:
txt$name %>% str_remove_all(pattern = "\\+")

# extracting a pattern from a string:
txt$name %>% str_extract_all(pattern = "\\d+GB RAM")

# find matching positions in a string:
txt$name %>% str_locate_all(pattern = "Notebook")

# removing a final part of strings:
txt$name %>% str_sub(start = "100")
