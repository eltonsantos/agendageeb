class HomeController < ApplicationController

  def index
    @birthday_name = Member.where("extract(day from birthdate) = ? AND extract(month from birthdate) = ?", Date.today.strftime('%d'), Date.today.strftime('%m'))
    # @birthday_name = Member.all.find_all {|u| u.birthday_today? }
  end

end
