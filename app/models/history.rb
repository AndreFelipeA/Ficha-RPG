class History < ApplicationRecord
  belongs_to :character, :dependent => :destroy
end
