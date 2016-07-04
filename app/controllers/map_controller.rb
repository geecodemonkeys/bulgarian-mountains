require 'nokogiri'
class MapController < ApplicationController
  def index
  end

  def upload
  	puts "Uploaded "  + params['file'].original_filename
  	uploaded_io = params[:file]
  	xml = Nokogiri::XML(uploaded_io.read)
	xml.remove_namespaces!
	points = []
	elements = xml.xpath("//trkpt")
	elements.each do |node|
	  point = { 
	  	   "lat" => node.attr('lat'),
           "lon" => node.attr('lon')
         }
      points.push(point)
	end
  	render :json => points
  end

end
