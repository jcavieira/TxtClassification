###########################################################
#################   Text Manipulation   ###################
###########################################################

# packages:
require(tokenizers)
require(magrittr)

# database:
bd_txt <- data.frame("name" = readRDS("F:/PPA_Classification/base_texto.rds") )

# counting sentences, words and characters:
bd_txt$name %>% count_sentences()
bd_txt$name %>% count_words()
bd_txt$name %>% count_characters()

# tokenizing sentences, words and characters:
bd_txt$name %>% tokenize_sentences()
bd_txt$name %>% tokenize_words()
bd_txt$name %>% tokenize_characters()

# When you need to use tokenizers to reduce the word using steamming:
bd_txt$name %>% tokenize_word_stems(language = "portuguese")

