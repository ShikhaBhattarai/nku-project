class Recipie < ActiveRecord::Base
  has_many :comments
  serialize :smallImageUrls,Array
  serialize :imageUrlsBySize, Hash
  serialize :attributes, Hash
  serialize :flavors, Hash
  serialize :ingredients, Array
  
  def self.search(search)
    if search
      find(:all, :conditions => ['recipeName LIKE ?', "%#{search}%"])
    else
      all
    end
  end
end




