class Gender < ApplicationRecord
  include Fonetical

  acts_as_paranoid

  # Associations

  has_many :people
  
end
