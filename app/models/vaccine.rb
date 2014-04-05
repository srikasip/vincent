class Vaccine < ActiveRecord::Base
 has_many :patient_vaccines
 has_many :patients, through: :patient_vaccines
end
