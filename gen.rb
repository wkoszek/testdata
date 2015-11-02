#!/usr/bin/env ruby

require 'rubygems'
require 'rmagick'

def toFileGen(n)
	fn = "#{n}.txt"
	f = File.open("data/#{fn}", "w+")
	yield n, f
	f.close();
end
toFileGen(     10) { |n, f| n.times { f.print "d" }}
toFileGen(    100) { |n, f| n.times { f.print "d" }}
toFileGen(   1000) { |n, f| n.times { f.print "d" }}
toFileGen(  10000) { |n, f| n.times { f.print "d" }}
toFileGen( 100000) { |n, f| n.times { f.print "d" }}
#toFileGen(1000000) { |n, f| n.times { f.print "d" }}
toFileGen(     16) { |n, f| n.times { f.print "b" }}
toFileGen(    128) { |n, f| n.times { f.print "b" }}
toFileGen(    256) { |n, f| n.times { f.print "b" }}

def genImg(res)
	["white", "black", "red" ].each do |color|
		["jpg", "png", "gif"].each do |fmt|
			fn = "data/#{res}-#{color}.#{fmt}"
			print "# generating #{fn}\n"
			print "<a href='data/#{fn}'><h4>#{fn}</h4></a>\n"
			`convert -size #{res} xc:#{color} #{fn}`
		end
	end
end

genImg('1x1')
genImg('10x10')
genImg('100x100')
genImg('1000x1000')


# add alexa rank pages.
# add data URL generator
# add same size data/different content
# add webapp for serving content
