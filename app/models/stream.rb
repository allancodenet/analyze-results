class Stream < ApplicationRecord

    validates :name, presence: true, uniqueness:{case_sensitive:false}

    has_many :substreams, dependent: :destroy
    has_many :students, through: :substreams
end
