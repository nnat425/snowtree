class Admin < ApplicationRecord
  has_secure_password

  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i

  validates_format_of :email, with: EMAIL_REGEX, on: :create
  validates_length_of :password, in: 6..20, on: :create

  validates_presence_of :email
  validates_presence_of :password
end
