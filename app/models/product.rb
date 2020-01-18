class Product < ApplicationRecord
  scope :united_states, -> { where(country_of_origin: "United States of America") }
  scope :most_recent, -> { order(created_at: :desc).first(3) }
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :cost, presence: true
  validates :country_of_origin, presence: true
  before_save(:titleize_product)

  private
  def titleize_product
    self.name = self.name.titleize
  end
end
