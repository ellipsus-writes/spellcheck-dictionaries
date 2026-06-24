# Dictionary patches

Hand-modifications layered on top of upstream-crawled dictionaries.
Applied by `script/crawl.sh` at the end of the `generate` step, so they
survive re-runs of the crawl pipeline.

Three file types are recognized, all keyed on the dictionary code:

- `<code>.aff.sed` — a `sed` script run against `dictionaries/<code>/index.aff`.
- `<code>.dic.sed` — a `sed` script run against the body of
  `dictionaries/<code>/index.dic` (the word count on line 1 is excluded
  from the input and recomputed afterwards).
- `<code>.dic.extra` — newline-separated entries appended to
  `dictionaries/<code>/index.dic`. The line-1 word count is recomputed
  automatically. `.dic.sed` runs before `.dic.extra` if both exist.

All files are optional. If none exist for a given code, the generated
dictionary is left untouched.

## Why

Some dictionaries need adjustments that aren't in the upstream source —
for example, adding `ʼ` (U+02BC modifier letter apostrophe) to an `ICONV`
mapping, or supplementing the word list with a missing common term.
Without this mechanism, every re-crawl would silently clobber those
edits.
