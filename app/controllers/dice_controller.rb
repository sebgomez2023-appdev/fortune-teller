class DiceController < ApplicationController

  def six_sided
    @dice_nums = Array.new

    6.times do
      rand_num = rand(1...6)
      @dice_nums.push(rand_num)
  end
  render({:template => "dice_templates/six_die_roll_1.html.erb"})

end
