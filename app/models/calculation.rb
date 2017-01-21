class Calculation
  include ActiveModel::Model

  attr_accessor :num1, :num2

  validates :num1, presence: true
  validates :num2, presence: true
end
