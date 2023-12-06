class User < ApplicationRecord
    has_many :characters, :dependent => :destroy
    validates :name, presence: true
    validates :email, presence: true
    validates :password, presence: true
end
