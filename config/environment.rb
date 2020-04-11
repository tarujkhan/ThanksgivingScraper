#!/usr/bin/env ruby
# frozen_string_literal: true

require 'pry'
require 'open-uri'
require 'NokoGiri'

require_relative '../lib/CLIPROJECT/cli'
require_relative '../lib/CLIPROJECT/thanksgiving'
require_relative '../lib/CLIPROJECT/scraper'
require_relative '../lib/CLIPROJECT/version'

# puts "I am about to call this function"
CLI.new.call
