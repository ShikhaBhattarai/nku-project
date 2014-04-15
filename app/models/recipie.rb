class Recipie < ActiveRecord::Base
  has_many :comments
  serialize :smallImageUrls,Array
  serialize :imageUrlsBySize, Hash
  serialize :attributes, Hash
  serialize :flavors, Hash
  serialize :ingredients, Array

end



