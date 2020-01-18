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

  def self.most_reviewed_product
    @popular_product = self.all
    most_reviewed = []
    @popular_product.each do |product|
      most_reviewed.push({:name => product.name, :rev_freq => product.reviews.length})
    end
    result = most_reviewed.sort_by { |p| p[:rev_freq] }
    result.last[:name]
  end

end
