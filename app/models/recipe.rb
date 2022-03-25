class Recipe < ApplicationRecord
  belongs_to :user
  has_many :faborites, dependent: :destroy

  with_options presence: true do
    validates :title
    validates :body
  end
end
