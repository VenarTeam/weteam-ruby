class Player < ApplicationRecord
  enum foot: { left: 'left', right: 'right' }
  validates :foot, inclusion: { in: foots.keys }
  validates :first_name, :last_name, :number, :foot, presence: true
end
