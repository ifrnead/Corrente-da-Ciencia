class Interessado < ActiveRecord::Base
  validates :email, presence: true
end
