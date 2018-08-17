class Employee < ApplicationRecord

  validates  :firstname, presence: true, length: {minimum: 3, maximum: 50}
  validates  :lastname, presence: true, length: {minimum: 2, maximum: 50}
  # validates  :email, presence: true, length: {minimum: 7, maximum: 50}
  # validates  :position, presence: true, length: {minimum: 5, maximum: 100}
  # validates  :client, presence: true, length: {minimum: 3, maximum: 100}

end