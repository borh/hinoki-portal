# Hinoki project portal site (hinoki-portal)

## What is this?

Everything needed to build and maintain the [Hinoki portal site](http://hinoki.ryu.titech.ac.jp).

## Prerequisites

You need [node.js](http://nodejs.org/) to install [bower](https://github.com/twitter/bower), which is used to download external dependencies like [Twitter Bootstrap](http://twitter.github.com/bootstrap/).

```bash
npm install -g bower
```

Then `less` node.js package is used to compile `.less` files to `.css`:

```bash
npm install -g less
```

## Usage

Use the supplied `Makefile` to build the project. Common workflow:

```bash
make init
```

Takes care of the project scaffolding, using [bower](https://github.com/twitter/bower) to download `bootstrap` and `jquery`.

```bash
make build
```

Will go and make external dependencies like `bootstrap` and copy them into the `assets` subfolder.

## Updating external dependencies

```bash
make update
```

## Compiling LESS in the background

Run `watch_less.sh` in the root of the project directory to automatically compile LESS to CSS:

```bash
./watch_less.sh &
```
