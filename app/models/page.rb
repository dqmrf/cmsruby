class Page < ActiveRecord::Base
  has_many :categories
  belongs_to :type
end