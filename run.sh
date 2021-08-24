#!/bin/bash
exec docker run -p 8888:8888 -v $HOME/github/probabilistic_programming/:/ext --rm ubuntupymc3:latest
