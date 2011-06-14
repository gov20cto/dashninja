class Dashboard
  include Mongoid::Document
  
  field :title, :type => String
  field :rotate, :type => String
  embeds_many :widgets
end
