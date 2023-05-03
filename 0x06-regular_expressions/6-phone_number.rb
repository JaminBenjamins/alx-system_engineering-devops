#!/usr/bin/env ruby
# An expression that matches a 10 digit number
puts ARGV[0].scan(/^\d{10,10}$/).join
