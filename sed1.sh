#!/bin/bash
read filename
sed -n "2,9p" $filename
