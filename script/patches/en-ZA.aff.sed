# Append U+02BC MODIFIER LETTER APOSTROPHE (ʼ) to every ICONV
# mapping that normalizes the curly apostrophe (’). en-ZA's aff
# has two such mapping lines; the anchored regex matches both.
#
# Why: writers using non-default keyboard layouts or paste
# sources may produce U+02BC where most produce U+2019. The
# upstream rule already normalizes the standard curly apostrophe
# to a plain apostrophe; extend it so the modifier letter
# variant is also normalized. Without this, words containing
# U+02BC fail spell-check.
s|^ICONV ’ '$|ICONV ’ ' ʼ|
