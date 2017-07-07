class Settle < ApplicationRecord
  belongs_to :file_dps
  belongs_to :users
end
