#!/usr/bin/env ruby
#


$LOAD_PATH.unshift(File.expand_path(File.dirname(__FILE__) + "/../lib"))
require 'net/http'
require 'uri'
require 'HTTP_Test/runner'
require 'thread'
tests = Queue.new

