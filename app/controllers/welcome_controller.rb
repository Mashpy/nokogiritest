require 'rubygems'
require 'nokogiri'
require 'open-uri'


class WelcomeController < ApplicationController	

def index
    doc = Nokogiri::HTML(open("http://www.eslcafe.com/joblist/"))
    @itemarray = []
    doc.css("dd strong a").collect { |link| link['href']}.each do |item|
    @itemarray << item
    end
    @titlearray = []
        doc.css("dd strong a").each do |title|
    @titlearray << title
    end
end
end