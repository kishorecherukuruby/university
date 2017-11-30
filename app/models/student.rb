class Student < ApplicationRecord
	GENDER = ["male","female"]
	validates :lname,presence: { message: "must be given please" }
	validates :fname, length: { minimum: 2 }
	validates :gender, inclusion: { in: GENDER,
    message: "\"%{value}\" is not a valid gender" }

    before_save :student_fullname

    before_update :student_fullname_update
    def student_fullname
    	self.full_name = fname + lname 
    end

    validate :check_years

    def check_years
    	year = dob.year
    	if year > 2017 || year <= 1917
    		errors.add(:dob,"Year should be between 1917 to 2017")
    	end
    end

end
