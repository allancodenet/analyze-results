class Substream < ApplicationRecord
  validates :name, presence: true, uniqueness:{case_sensitive:false}
  belongs_to :stream
  has_many :students
end
