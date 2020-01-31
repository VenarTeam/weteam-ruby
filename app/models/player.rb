class Player < ApplicationRecord
  enum foot: { left: 'left', right: 'right' }
  validates :foot, inclusion: { in: foots.keys }
end
