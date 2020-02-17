class Log < ApplicationRecord
  has_many :exercises, dependent: :destroy  
  belongs_to :user
  validates :date, presence: true
  validates :workout, presence: true
  validates :mood, presence: true
  validates :length, presence: true
end
