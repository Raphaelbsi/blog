class Post < ApplicationRecord
  belongs_to :usuario

  validates :titulo, presence: true
  validates :texto, presence: true
end
