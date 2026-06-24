# Mark this entry as NOSUGGEST.
#
# Why: upstream sources sometimes include slurs and other
# offensive words but ship them without the NOSUGGEST flag. A
# word that is spell-check-valid but not NOSUGGEST-flagged can
# be proposed by the suggester as a correction for a nearby
# typo — meaning the spellchecker can offer a slur as a "fix"
# for an unrelated misspelling. Patches in this file close
# these labeling gaps locally.
s|^jigaboo/S$|jigaboo/S!|
