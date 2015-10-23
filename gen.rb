#!/usr/bin/env ruby

def toFileGen(n)
	fn = "#{n}.txt"
	f = File.open(fn, "w+")
	yield n, f
	f.close();
end
toFileGen(     10) { |n, f| n.times { f.print "d" }}
toFileGen(    100) { |n, f| n.times { f.print "d" }}
toFileGen(   1000) { |n, f| n.times { f.print "d" }}
toFileGen(  10000) { |n, f| n.times { f.print "d" }}
toFileGen( 100000) { |n, f| n.times { f.print "d" }}
toFileGen(1000000) { |n, f| n.times { f.print "d" }}
toFileGen(     16) { |n, f| n.times { f.print "b" }}
toFileGen(    128) { |n, f| n.times { f.print "b" }}
toFileGen(    256) { |n, f| n.times { f.print "b" }}

# add alexa rank pages.
# add data URL generator
# add same size data/different content
# add webapp for serving content
