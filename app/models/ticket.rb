class Ticket < ActiveRecord::Base
  belongs_to :show
  belongs_to :guest
end
