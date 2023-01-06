class User < ApplicationRecord
  validates :name, presence: true, length: { minimum: 3 }
  validates :age, presence: true, length: { minimum: 2 }
end
