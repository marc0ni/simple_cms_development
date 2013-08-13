class Subject < ActiveRecord::Base
  
  has_many :pages
  
  #scope :visible, where(visible: :true)
  #scope :invisible, where(invisible: :false)
  #scope :invisible => {where(:visible => false)}
  scope :search, lambda{|query| where (["name LIKE ?", "%#{query}%"])}
end
