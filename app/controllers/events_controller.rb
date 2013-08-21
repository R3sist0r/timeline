class EventsController < ApplicationController
	def index

		@json = {:timeline => { :date=>[], :era=>[] } }
		events = Event.all()

		events.each do |date|
			@date = {}
			@date[:startDate] = date.startDate
			@date[:endDate] = date.endDate
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
		@json =@json.to_json


	end
end