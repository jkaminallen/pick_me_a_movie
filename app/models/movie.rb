class Cheese < ActiveRecord::Base
  validates :name, presence: true
  validates :year, presence: true
  validates :company, presence: true

  
end
