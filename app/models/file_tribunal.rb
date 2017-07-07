class FileTribunal < ApplicationRecord
  belongs_to :tribunal
  has_many :file_dps
end
