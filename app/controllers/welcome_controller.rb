require 'rubygems'
require 'nokogiri'
require 'open-uri'


class WelcomeController < ApplicationController 

    def index
      doc = Nokogiri::HTML(open("http://www.eslemployment.com/"))
      @titlearray = []
        doc.css(".jobtitle").each do |titlecss|
        @titlearray << titlecss.text
        end
    end
end