

class MapController < ApplicationController

  before_filter :set_elasticsearch

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

  def search_poi
    puts params["q"]
    return_val = @client.search index: 'poi',
              body: {
                query: { fuzzy: { title: params["q"] } }
              }
    to_return = []
    return_val["hits"]["hits"].each_with_index do |item, idx|
      to_return << {
        id: idx,
        lat: item["_source"]["lat"],
        lon: item["_source"]["lon"],
        text: item["_source"]["title"],
      }
    end
  	render :json => to_return
  end

  private      
    def set_elasticsearch
      @client = Elasticsearch::Client.new log: true
      @client.cluster.health
    end
end
