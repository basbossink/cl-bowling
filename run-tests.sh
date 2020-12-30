#!/usr/bin/env sh

sbcl --noinform\
     --no-sysinit\
     --non-interactive\
     --eval '(asdf:test-system :cl-bowling)'
