class Admission < ApplicationRecord
  belongs_to :patient
  belongs_to :consultant
  
  has_many :respectforms
  has_one :edl
  
  #validate admit_time_cannot_be_future
  #validate discharge_time_cannot_be_before_admission
  
  validates :consultant, presence: true
  validates :patient, presence: true
  validates :admit_time, presence: true
  
  def completed?
    true if !discharge_time.nil?
  end

 def shout
   "blah"
 end
 
end
