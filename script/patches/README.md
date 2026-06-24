# Dictionary patches

Hand-modifications layered on top of upstream-crawled dictionaries.
Applied by `script/crawl.sh` at the end of the `generate` step, so they
survive re-runs of the crawl pipeline.

Two file types are recognized, both keyed on the dictionary code:

- `<code>.aff.sed` — a `sed` script run against `dictionaries/<code>/index.aff`.
- `<code>.dic.extra` — newline-separated entries appended to
  `dictionaries/<code>/index.dic`. The line-1 word count is recomputed
  automatically after the append.

Either file may be omitted. Both are optional; if neither exists, the
generated dictionary is left untouched.

## Why

Some dictionaries need adjustments that aren't in the upstream source —
for example, adding `ʼ` (U+02BC modifier letter apostrophe) to an `ICONV`
mapping, or supplementing the word list with a missing common term.
Without this mechanism, every re-crawl would silently clobber those
edits.
