class Page < ActiveRecord::Base
  has_many :categories
  has_many :fields
  belongs_to :type

  accepts_nested_attributes_for :fields, reject_if: :all_blank
end