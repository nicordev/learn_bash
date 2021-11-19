#! /bin/bash

status="missing mandatory file."; for file in {"Makefile","makefile","GNUMakefile"}; do if [ -f "$PWD/$file" ]; then status="mandatory file exists."; break; fi; done; echo $status
