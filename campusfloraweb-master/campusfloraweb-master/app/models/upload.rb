class Upload  < ActiveRecord::Base
  has_many :species
  # devise :database_authenticatable, 
  # :recoverable, :rememberable, :trackable, :validatable
end
