#!/bin/bash
ps -aux | grep 'chrome' | awk '{print $2}' | xargs kill