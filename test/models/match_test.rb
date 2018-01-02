require 'test_helper'

class MatchTest < ActiveSupport::TestCase
   test "should_not_save_empty_match" do
     	match = Match.new
  		assert_not match.save
   end

   
end
