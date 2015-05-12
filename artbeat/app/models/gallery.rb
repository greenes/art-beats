class Gallery < ActiveRecord::Base
  belongs_to :artist
  has_many :pieces
end
