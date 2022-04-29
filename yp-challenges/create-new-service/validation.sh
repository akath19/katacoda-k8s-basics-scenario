#!/bin/bash -e
curl http://localhost:8080 > text.txt
grep 'Hello YP' text.txt