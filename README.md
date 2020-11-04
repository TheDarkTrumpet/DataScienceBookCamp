# DataScienceBookcamp

## Purpose

This repository includes mostly Jupyter notebooks that include fragments of code from the chapters presented in the book [DataScienceBookcamp](https://www.manning.com/books/data-science-bookcamp?query=data%20science%20book) by Leonard Apeltsin and published by Manning.

This book is currently in MEAP, and isn't a replacement for the source code for the book.  This is primarily off of code/snippets/tests that I felt worth running.

## Format

All files included are Jupyter notebook format.  Meaning, you can't run these from the command line.  See the installation/setup section for more information.

## Installation/Setup

In the root of this repository is a script called ``setup.sh``, that - assuming you're using BASH, should setup the virtual environment for you.  You do need to have Python installed.  This installs the following:
1. pyenv (python environments)
2. virtualenv (extension of pyenv)

There are a few cases when you don't want to run this script, but use it as a baseline for what you do need to install - and those are:
1.  If you already have pyenv/virtualenv installed
2.  If you use an alternate shell (e.g. .zsh)

Once everything's setup, be sure to install all the library files from the requirements.txt file.  The script does this automatically.