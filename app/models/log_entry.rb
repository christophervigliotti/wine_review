class LogEntry < ActiveRecord::Base
  belongs_to :wine

  # must validate presence of all fields

  RATING_RANGE = 1..5

  # must have a constant for valid ratings

  validates :name, presence: true
  validates :rating, presence: true, :inclusion => RATING_RANGE
  validates :location, presence: true
  validates :comments, presence: true
  validates :tasted_on, presence: true

end
