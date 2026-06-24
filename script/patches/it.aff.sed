# Insert an ICONV mapping for U+2019 RIGHT SINGLE QUOTATION MARK
# (’) → U+0027 APOSTROPHE (') after the SET UTF-8 line.
#
# Why: Italian writers routinely produce ’ in elisions (l’anno,
# c’è, dell’arte). The upstream dictionary ships no ICONV
# mapping, so without this patch any word containing ’ fails
# spell-check.
/^SET UTF-8$/a\
ICONV 1\
ICONV ’ '
