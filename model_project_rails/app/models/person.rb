class Person < ApplicationRecord
  include Fonetical
  
  acts_as_paranoid

  # Associations

  belongs_to :gender
  belongs_to :breed
  
end
