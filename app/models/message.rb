class Message < ActiveRecord::Base
  validates :name, :email, :content, presence: true
  after_create :send_email

  def send_email
    ContactMailer.new_email(self).deliver
  end
end
