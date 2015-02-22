class Article < ActiveRecord::Base
  belongs_to :category

  validates_presnce_of :title
  validates_presence_of :content

  scope :alphabetical, order('title')
  scope :active, where('active = ?', true)
end
