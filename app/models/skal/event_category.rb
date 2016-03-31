class Skal::EventCategory < ActiveRecord::Base
  
  validates :name, presence: true
  validates :slug, presence: true,
                   uniqueness: true,
                   format: { :with => /\A[a-z]+\z/, :message => "は半角英字で記入して下さい" }

  scope :active, -> { where(status: 'public') }
  scope :sluged, lambda { |slug| where(slug: slug) }

end
