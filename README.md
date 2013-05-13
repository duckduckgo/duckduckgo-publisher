# Installation

You require the following libraries of https://duckpan.org/

 - DDG
 - DDGC::Locale::DuckduckgoDuckduckgo
 - DDGC::Locale::DuckduckgoDontbubbleus
 - DDGC::Locale::DuckduckgoDonttrackus
 - DDGC::Locale::DuckduckgoWhatisdnt

You can install App::DuckPAN of CPAN for this and then do the following command:

```
duckpan \
	DDG \
	DDGC::Locale::DuckduckgoDuckduckgo \
	DDGC::Locale::DuckduckgoDontbubbleus \
	DDGC::Locale::DuckduckgoDonttrackus \
	DDGC::Locale::DuckduckgoWhatisdnt
```

# Publishing

Inside the repository do this:

```
perl -Ilib bin/ddg_publisher test_publish
```

The directory test_publish will be generated and filled up with the results.


