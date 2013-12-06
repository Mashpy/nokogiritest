require 'rubygems'
require 'nokogiri'
require 'open-uri'


class WelcomeController < ApplicationController 

def index
    doc = Nokogiri::HTML(open("http://esljobs.herokuapp.com/"))
    @titlearray = []
        doc.css(".home_wrapper").each do |s|
            titlecss = s.css("strong a").text
    linkcss = s.css("strong a").collect { |link| link['href']}
    @titlearray << titlecss
    @titlearray << linkcss
    end
end
end