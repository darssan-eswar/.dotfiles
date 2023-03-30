#!/bin/bash

linux: clean
	./bin/linux.sh
clean:
	./bin/cleanup.sh
