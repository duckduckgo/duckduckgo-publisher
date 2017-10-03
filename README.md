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
	DDGC::Locale::DuckduckgoDonttrackus
```

# Proxying Requests to Dev Server

My default, asset URLs are relative (e.g. /style.css). To proxy these request to a development server, you can specify the domain for individual sites:

```shell
duckpan publisher --duckduckgo=http://moollaza.duckduckgo.com
```

Now all relative URLs will be directed to the specified server. In this case `/style.css` will be requested as `http://moollaza.duckduckgo.com/style.css`.

This allows you to develop locally and load assets from another server.

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


