require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should_calculate_correct_score" do
     	user = User.new
     	user.email = rand( 10000).to_s + "a@aaa.com"
     	user.password ="secret123"
     	user.save

     	match = Match.new
     	match.owner = user
     	match.their_score = 30
     	match.your_score  = 1
     	match.played_date = Date.new()
     	match.opponent = User.all.last

     	match.save

  		assert user.score == 50
   end

end
