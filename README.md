# Installation

You require DDGC::Locale::DuckduckgoDuckduckgo and DDG

```
duckpan DDGC::Locale::DuckduckgoDuckduckgo DDG
```

# Publishing

Inside the repository do this:

```
perl -Ilib bin/ddg_publisher ~/test_publish

# compressing html to one line without comments and unnecessary whitespaces
perl -Ilib bin/ddg_publisher --no_compression ~/test_publish
```

The directory ~/test_publish will be generated and filled up with the results.


