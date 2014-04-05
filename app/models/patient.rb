class Patient < ActiveRecord::Base
  has_many :patient_vaccines
  has_many :vaccines, through: :patient_vaccines

  belongs_to :village
  
end
