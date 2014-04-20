#! /usr/bin/ruby
rootdir = File.expand_path(File.dirname(__FILE__))
$:.unshift(rootdir)
$:.unshift("#{rootdir}/lib")

require 'app'
run Poyo
