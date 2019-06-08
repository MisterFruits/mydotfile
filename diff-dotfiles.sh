#!/usr/bin/env bash

cd dotfiles
for i in * .[^.]*; do
    diff $i ~/$i
done
