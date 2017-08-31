#!/usr/bin/env bash

sudo kill -9 $(sudo lsof -i:3000 -t)

