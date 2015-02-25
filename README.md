# DuckDuckGo Publisher [![Build Status](https://travis-ci.org/duckduckgo/duckduckgo-publisher.png?branch=master)](https://travis-ci.org/duckduckgo/duckduckgo-publisher)

# Installation

You require the following libraries of https://duckpan.org/

 - DDG
 - DDGC::Locale::DuckduckgoDuckduckgo
 - DDGC::Locale::DuckduckgoDontbubbleus
 - DDGC::Locale::DuckduckgoDonttrackus

You can install App::DuckPAN of CPAN for this and then do the following command:

```
duckpan \
	DDG \
	DDGC::Locale::DuckduckgoDuckduckgo \
	DDGC::Locale::DuckduckgoDontbubbleus \
	DDGC::Locale::DuckduckgoDonttrackus \
```

# Publishing

Inside the repository you can do this to get a live simulation:

```
duckpan publisher
```

If you want to generate the static files you can do the following from the repository:

```
perl -Ilib bin/ddg_publisher test_publish
```

The directory test_publish will be generated and filled up with the results.


