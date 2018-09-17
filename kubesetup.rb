#!/usr/local/bin/ruby

require 'rubygems'
require "erb"
require "yaml"

@replicaCount = "3"
@imageTag = "v3"

renderer = ERB.new(`cat default/monkey_service.yaml.erb`)
puts output = renderer.result()
File.write('dev/monkey_service.yaml', output)
