class Admin < ApplicationRecord
  has_secure_password

  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i

  validates_format_of :email, with: EMAIL_REGEX, on: :create
  validates_length_of :password, in: 6..20, on: :create
  validates_presence_of :email
  validates_presence_of :password

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  def deliver_password_reset_instructions
    self.perishable_token = SecureRandom.hex(4)
    save(validate: false)
    PasswordResetNotifier.password_reset_instructions(self).deliver_now
  end
end
