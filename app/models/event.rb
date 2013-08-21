class Event < ActiveRecord::Base
  attr_accessible :date, :name, :startDate, :endDate, :headline, :text, :tag, :classname, :media, :thumbnail, :credit, :caption
end
