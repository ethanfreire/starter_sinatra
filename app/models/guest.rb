class Guest < ActiveRecord::Base
has_many :shows, through: :tickets
has_many :tickets


end
