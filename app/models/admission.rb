class Admission < ApplicationRecord
  belongs_to :patient
  belongs_to :consultant
end
