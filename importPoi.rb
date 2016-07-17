#!/usr/bin/ruby

require 'elasticsearch'

client = Elasticsearch::Client.new log: false

client.cluster.health

line_num = 0
bodies = []
File.open("poi.txt", "r") do |f|
  f.each_line do |line|
  	line.strip!
    split = line.split(",")
    lat = split[2]
    lon = split[3]
    txt = split[5]
    level = split[4]
    type = split[1]

    bodies.push({
    	"index" => {
    	"data" => { 
    		  "title" => txt,
              "lat" => lat,
              "lon" => lon,
              "type" => type.to_i,
	      "level" => level.to_i
         }}})

  end
end

bodies.each_slice(100) do |b|
	client.bulk index: 'poi',
			type: 'poi',
			body: b
	puts "Buff #{line_num}"
    line_num += 1
end


