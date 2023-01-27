class NumbersController < ApplicationController
  def winners
    @zebra = Array.new

    5.times do
      giraffe = rand(1...100)

      @zebra.push(giraffe)
    end
    render({ :template => "lottery_stuff/woohoo.html.erb" })
  end

  def losers
    @loosing_num = Array.new

    5.times do
      rand_num = rand(1...100)

      @loosing_num.push(rand_num)
    end
    render({ :template => "lottery_stuff/boohoo.html.erb" })
  end
end
