class Member < ApplicationRecord
  has_one_attached :picture

  def birthday_today?
    birthdate == Date.today
  end

end
