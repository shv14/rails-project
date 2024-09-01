#!/usr/bin/env bash# exit on error
set -o errexit

bundle install 
budle exec rails assets:precompile
budle exec rails assets:clean