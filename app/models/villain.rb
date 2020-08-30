class Villain < ActiveRecord::Base
  validates :name, presence: true
  has_many :attacks

end
