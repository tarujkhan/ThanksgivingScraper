#!/usr/bin/env ruby
# frozen_string_literal: true

require 'pry'
require 'open-uri'
require 'NokoGiri'

require_relative '../lib/cli'
require_relative '../lib/thanksgiving'
require_relative '../lib/scraper'

# puts "I am about to call this function"
CLI.new.call
