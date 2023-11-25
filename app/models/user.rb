class User < ApplicationRecord
    has_secure_password
    validates :name, :email, presence: true
    validates :email, uniqueness: true
    has_many :courses, dependent: :destroy
    has_many :enrollments
    has_many :courses, through: :enrollments

end
