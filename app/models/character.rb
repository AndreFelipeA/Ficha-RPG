class Character < ApplicationRecord
    has_one :history, :dependent => :destroy
    has_and_belongs_to_many :items
    belongs_to :user
    validates :name, presence: true
    validates :classe, presence: true
    validates :str, presence: true
    validates :dex, presence: true
    validates :int, presence: true
    validates :con, presence: true
    validates :wis, presence: true
    validates :cha, presence: true
end
