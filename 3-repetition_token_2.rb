#!/usr/bin/env ruby
# A script that prints the characters hbt and ends with n
# Any character is allowed in between
puts ARGV[0].scan(/hbt+n/).join
