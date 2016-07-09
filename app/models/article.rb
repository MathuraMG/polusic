class Article < ActiveRecord::Base
  validates :item, :content, :presence => true
end
