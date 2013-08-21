class EventsController < ApplicationController
	def index

		@json = {:timeline => { :date=>[], :era=>[] } }
		@json[:timeline][:headline] = "The Main Timeline Headline Goes here"
		@json[:timeline][:type] = "default"
		@json[:timeline][:text] = "<p>Intro body text goes here, some HTML is ok</p>"
		@json[:timeline][:asset] = {}
		@json[:timeline][:asset][:media] = "http://yourdomain_or_socialmedialink_goes_here.jpg"
		@json[:timeline][:asset][:credit] = "Credit"
		@json[:timeline][:asset][:caption] = "caption"

		events = Event.all()
		events.each do |date|
			@date = {}
			@date[:startDate] = date.startDate.to_s
			@date[:endDate] = date.endDate.to_s
			@date[:headline] = date.headline
			@date[:text] = date.text
			@date[:tag] = date.tag
			@date[:classname] = date.classname
			@date[:asset] = {}
			@date[:asset][:media] = date.media
			@date[:asset][:thumbnail] = date.thumbnail
			@date[:asset][:credit] = date.credit
			@date[:asset][:caption] = date.caption
			@json[:timeline][:date].push(@date)
		end
		@json =@json.to_json.html_safe


	end
end