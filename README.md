# Hinoki project portal site (hinoki-portal)

## What is this?

Everything needed to build and maintain the [Hinoki portal site](http://www.hinoki-project.org).

## Prerequisites

You need [boot](https://github.com/boot-clj/boot) (and thus the JVM).

## Usage

Rebuild on file change:

```bash
boot watch middleman
```

Building the production project into the `target/` subfolder:

```bash
boot middleman -e build
```
