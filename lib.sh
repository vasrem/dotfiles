#!/bin/bash

backup(){
    [[ -f "$HOME/$1" || -L "$HOME/$1" ]] && mv $HOME/$1 $HOME/$1.old || true
}
