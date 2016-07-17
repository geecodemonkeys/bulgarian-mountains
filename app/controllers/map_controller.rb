

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
                query: {
                  bool: {
                    should: [ 
                      {
                        match_phrase_prefix: { 
                          title: {
                            query: params["q"],
                            max_expansions: 50
                          }
                        } 
                      },
                      {
                        wildcard: {
                          title: '*' + params["q"] + '*'
                        }
                      }
                    ],
                    minimum_should_match: 1
                  } 
                }
              }
    docs = []
    return_val["hits"]["hits"].each_with_index do |item, idx|
      docs << {
        id: idx,
        lat: item["_source"]["lat"],
        lon: item["_source"]["lon"],
        text: generate_markup(item["_source"]["title"], POI_TYPES[item["_source"]["type"].to_i]),
        level: item["_source"]["level"]
      }
    end
    min_level_map = {}
    docs.each do |item|
      key = item[:text]
      if not min_level_map.key?(key)
        min_level_map[key] = item
      end
      cached = min_level_map[key]
      if item[:level] < cached[:level]
        min_level_map[key] = item
      end 
    end
  	render :json => min_level_map.values
  end

  def generate_markup(text, type)
    spaces = ""
    50.times { spaces << '&nbsp;' }
    "<b>#{text}</b>#{spaces}<i>#{type}</i>"
  end

  private      
    def set_elasticsearch
      begin
        config = {
          host: "http://#{Rails.application.config.elasticsearch_address}/",
          log: true
        }
        @client = Elasticsearch::Client.new(config)
        @client.cluster.health
      rescue => e
        puts "No Elasticsearch #{e}"
      end
    end
end
