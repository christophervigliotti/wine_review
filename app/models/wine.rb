class Wine < ActiveRecord::Base

  def self.varietals
    ['Cabernet','Pinot Noir','Chardonnay','Champagne','Chianti','Pinot Grigio']
  end

  validates :name, presence: true
  validates :year, presence: true, numericality: { only_integer: true }
  validates :country, presence: true
  validates :varietal, presence: true, inclusion: { in: self.varietals }

end
