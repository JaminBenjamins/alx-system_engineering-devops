#!/usr/bine/env ruby
# A script that prints a sender and receiver phone number
# The flags that were used 
puts ARGV[0].scan(/\[from:(\+?\w+)\] \[to:(\+?\w+)\] \[flags:(-?\d:-?\d:-?\d:-?\d:-?\d)\]/).join(",")
