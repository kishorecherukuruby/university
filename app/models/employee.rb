class Employee < ApplicationRecord
	validates :name ,:email,:age, presence: true
end
