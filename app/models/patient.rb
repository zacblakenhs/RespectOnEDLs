class Patient < ApplicationRecord

  validates :firstname, presence: true, length: {maximum: 50}
  validates :preferred_name, presence: true, length: {maximum: 50}
  validates :gender, presence: true
  validates :nhsno, presence: true
  
  has_many :admissions
  
  def details
    nhsno.to_s + " - " + fullname + " - " + dob.strftime("DOB: %m/%d/%Y")
  end
    
  def fullname 
    firstname + " " +surname  
  end 
  
end
