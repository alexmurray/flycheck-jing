# Flycheck jing Checker

[![License GPL 3](https://img.shields.io/badge/license-GPL_3-green.svg)](http://www.gnu.org/licenses/gpl-3.0.txt)
[![MELPA](http://melpa.org/packages/flycheck-jing-badge.svg)](http://melpa.org/#/flycheck-jing)
[![Build Status](https://travis-ci.org/alexmurray/flycheck-jing.svg?branch=master)](https://travis-ci.org/alexmurray/flycheck-jing)

Integrate [jing](https://github.com/relaxng/jing-trang) with
[flycheck](http://www.flycheck.org) to automatically check the
syntax of your RELAXNG schemas on the fly.

Assumes [rnc-mode](https://github.com/TreeRex/rnc-mode) is installed.

## Installation

### MELPA

The preferred way to install `flycheck-jing` is via
[MELPA](http://melpa.org) - then you can just <kbd>M-x package-install RET
flycheck-jing RET</kbd>

To enable then simply add the following to your init file:

```emacs-lisp
(with-eval-after-load 'flycheck
   (require 'flycheck-jing)
   (flycheck-jing-setup))
```

We recommend to use [use-package](https://github.com/jwiegley/use-package) to
make this automatic:

```emacs-lisp
(use-package flycheck-jing
  :ensure t
  :after flycheck
  :config (flycheck-jing-setup))
```

### Manual

If you would like to install the package manually, download or clone it and
place within Emacs' `load-path`, then you can require it in your init file like
this:

```emacs-lisp
(require 'flycheck-jing)
(flycheck-jing-setup)
```

NOTE: This will also require the manual installation of `flycheck` and
`rnc-mode` if you have not done so already.

## License

Copyright © 2017 Alex Murray

Distributed under GNU GPL, version 3.
