class Wine < ActiveRecord::Base

  # SHOULD I HAVE USED A CONSTANT HERE ala Wine::VARIETALS ??
  def self.varietals
    ['Cabernet','Pinot Noir','Chardonnay','Champagne','Chianti','Pinot Grigio']
  end

  validates :name, presence: true
  validates :year, presence: true, numericality: { only_integer: true }
  validates :country, presence: true
  validates :varietal, presence: true, inclusion: { in: self.varietals, message: "must be  #{self.varietals.to_sentence(:last_word_connector => ' or ')}" }

end