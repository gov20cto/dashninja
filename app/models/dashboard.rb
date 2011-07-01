class Dashboard
  include Mongoid::Document
  
  field :title, :type => String
  field :rotate, :type => Integer
  field :width, :type => Integer
  field :projects, :type => Array
  
  belongs_to :user
end

