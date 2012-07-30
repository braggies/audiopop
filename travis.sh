#!/bin/bash
bundle exec rake db:setup && bundle exec rake spec --trace
