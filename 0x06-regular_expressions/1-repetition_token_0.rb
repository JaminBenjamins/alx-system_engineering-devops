#!/usr/bin/env ruby
# Prints a word that starts with h and ends with n and and has some 2 to 5 t's
puts ARGV[0].scan(/hbt{2,5}n/).join
