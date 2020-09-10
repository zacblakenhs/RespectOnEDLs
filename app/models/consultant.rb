class Consultant < ApplicationRecord
  validates :title, presence: true
  validates :firstname, presence: true
  validates :surname, presence: true
  validates :specialty, presence: true
  validates :discipline, presence: true
  
  has_many :admissions
  
  def longname 
    title + " " + firstname[0] + " " + surname + " - " + specialty
  end
  
  def details 
   title + " " + firstname + " " + surname + " - " + specialty
  end
  
end
