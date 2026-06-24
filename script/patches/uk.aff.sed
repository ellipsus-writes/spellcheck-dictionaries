# Append U+02BC MODIFIER LETTER APOSTROPHE (ʼ) to the ICONV
# mapping that normalizes the curly apostrophe (’).
#
# Why: Ukrainian orthography uses ʼ as part of words. The
# upstream already maps ʼ → ' directly via a separate rule, but
# not from ’; this patch extends the ’ → ' mapping to also
# cover the modifier letter variant so any combination of
# apostrophe inputs spell-checks.
s|^ICONV ’ '$|ICONV ’ ' ʼ|
