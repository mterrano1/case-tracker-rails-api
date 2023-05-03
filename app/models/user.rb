class User < ApplicationRecord
    # Uses bcrypt to store a secure password in the database
    has_secure_password

    validates :first_name, :last_name, :username, presence: true
    validates :username, uniqueness: { case_sensitive: false }
end
