class Admission < ApplicationRecord
  belongs_to :patient
  belongs_to :consultant
  
  validate admit_time_cannot_be_future
  validate discharge_time_cannot_be_before_admission
  
  validates :consultant, presence: true
  validates :patient, presence: true
  validates :admit_time, presence: true
  
end
