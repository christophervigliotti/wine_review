class Wine < ActiveRecord::Base

  has_many :log_entries, dependent: :destroy

  #def self.varietals
    #['Cabernet','Pinot Noir','Chardonnay','Champagne','Chianti','Pinot Grigio']
  #end
  VARIETALS = ['Cabernet','Pinot Noir','Chardonnay','Champagne','Chianti','Pinot Grigio']

  validates :name, presence: true
  validates :year, presence: true, numericality: { only_integer: true }
  validates :country, presence: true
  validates :varietal, presence: true, inclusion: { in: VARIETALS, message: "must be  #{VARIETALS.to_sentence(:last_word_connector => ' or ')}" }

end