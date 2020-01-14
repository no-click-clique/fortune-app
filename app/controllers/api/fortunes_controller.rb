class Api::FortunesController < ApplicationController

  def random_fortune_method
    @fortunes = [
      "You will become rich.",
      "You will become poor.",
      "You will need to pay up front... for you will die in 7 days."
    ]
    @fortune = fortunes.sample
    render "random_fortune.json.jb"
  end

  def lotto_method
    @nums = []
    6.times do
      @nums << rand(1..60)
    end
    render "lotto.json.jb"
  end

  def count_method
    @count = 0
    @count += 1 #this does not work! instance variables refresh on page refresh
    render "count.json.jb"
  end

  def sample_html_method
    render "sample.html"
  end

end
