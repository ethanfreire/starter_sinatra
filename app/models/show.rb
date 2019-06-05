class Show < ActiveRecord::Base
has_many :guests, through: :tickets
has_many :tickets


end
