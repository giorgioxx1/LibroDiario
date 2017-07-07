class FileDp < ApplicationRecord
  belongs_to :file_tribunals
  has_many :settles
end
