class Edl < ApplicationRecord
  belongs_to :patient
  belongs_to :admission
end
