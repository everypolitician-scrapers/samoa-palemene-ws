#!/bin/env ruby
# encoding: utf-8
# frozen_string_literal: true

require 'pry'
require 'scraped_page_archive/open-uri'
require 'scraped'

class String
  def tidy
    gsub(/[[:space:]]+/, ' ').strip
  end
end

def scrape_list(url)
  puts "Opening #{url}"
  Scraped::HTML.new(response: Scraped::Request.new(url: url).response)
end

scrape_list('http://www.palemene.ws/new/members-of-parliament/members-of-the-xvi-parliament/')
