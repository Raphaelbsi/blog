class Usuario < ApplicationRecord
  validates :nome, presence: true
end
