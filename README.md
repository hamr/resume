# Robert Hamrick’s resume.

[![GitHub CI](https://github.com/hamr/resume/actions/workflows/main.yml/badge.svg)](https://github.com/hamr/resume/actions/workflows/main.yml)
[![latest release](https://img.shields.io/github/v/release/hamr/resume.svg?style=flat)](https://github.com/hamr/resume/releases/latest)


Download the latest [`resume.pdf`](https://github.com/hamr/resume/releases/latest/download/resume.pdf).


## Build

PDFs are built continuously for tagged releases by Github Actions using [`.github/workflows/main.yml`](.github/workflows/main.yml).


To build locally, run

```
$ make resume.pdf
```

or alternatively

```
$ xelatex resume.tex
```

Note the following build requirements:

* TeXLive

* GNU Make

* Git


## Credit

Forked from [posquit0](https://github.com/posquit0)’s awesome [**Awesome-CV**](https://github.com/posquit0/Awesome-CV) template.
Modifications include:

* add git hash in footer

* use fontawesome5 instead of fontawesome

* require roboto package

* add environments for summary section: `cvitems1` and `cvbox`.

* use 9pt for `entrypositionstyle` (8pt was too small for my eyes)

