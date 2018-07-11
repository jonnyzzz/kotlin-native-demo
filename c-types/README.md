Static Native Library Sample
============================

The repository demonstrates a minimal possible static library,
which is used from 
 - Kotlin/Native (`in.sh`)
 - C (`inc.sh`)

I created the library to debug the linkage error I saw on 
macOS: `___isOSVersionAtLeast`. See blog posts below for more details.

The code fails to link now, you may see the linkage error I have. You may fix that by removing macOS version
test from `lib.c`.

We assume you have Xcode commanline and `konanc` in PATH.


Blog Posts and Details
======================

You may find more information on my blog:

- https://jonnyzzz.com/blog/2018/05/16/link-error/
- https://jonnyzzz.com/blog/2018/06/05/link-error-2/
- https://jonnyzzz.com/blog/2018/05/28/minimalistic-kn/



