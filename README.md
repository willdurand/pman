pman
====

This package provides **pman**, the [PHP
manual](http://fr.php.net/download-docs.php) in *nix style man pages, via
Composer and Packagist.


Installation
------------

This package SHOULD be installed **globally**:

    composer global require willdurand/pman:dev-master

Then, add `$COMPOSER_HOME/vendor/willdurand/pman/bin/` to your `$PATH`.
(`$COMPOSER_HOME` is often `~/.composer`, but it may be different depending on
your operating system or configuration).

**Important:** It is important to use such a path and not, for instance,
`.composer/vendor/bin`.


Usage
-----

1. First, you have to fetch the documentation. This can be done time to time, or
   only once, but it MUST be run at least once:

    sync-pman

This relies on [Docker](https://www.docker.com/). In case you want to clear
Docker's cache, you can pass the `--no-cache` option to this script:

    sync-pman --no-cache

2. Run `pman` to display documentation (like you would do with `man`):

    pman strlen


License
-------

(willdurand's) pman is released under the MIT License. See the bundled LICENSE
file for details. Note that `pman`, the original package from PEAR, has its own
license.
