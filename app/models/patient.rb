class Patient < ApplicationRecord
  
  def details
    nhsno.to_s + fullname + dob.strftime("DOB: %m/%d/%Y")
  end
    
  def fullname 
    firstname + surname  
  end 
  
end
