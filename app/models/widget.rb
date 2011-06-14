class Widget
  include Mongoid::Document
  
  field :widget_type
  field :width, :type => Integer
  field :height, :type => Integer
  field :update, :type => Integer
  field :class, :type => String
  field :value
  
  embedded_in :dashboard
end
