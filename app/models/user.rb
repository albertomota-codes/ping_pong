class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :trackable, :validatable

  has_many :own_registered_matches, class_name:"Match",foreign_key:"owner_id"
  has_many :others_registered_matches, class_name:"Match",foreign_key:"opponent_id"


  def score

  	own_registered_won 		= self.own_registered_matches.select { |match| match.your_score > match.their_score }.count
  	others_registered_won 	= self.others_registered_matches.select { |match| match.your_score < match.their_score }.count

  	return (own_registered_won+others_registered_won)*50

  end

  def total_played_matches
  	return self.own_registered_matches.count + self.others_registered_matches.count
  end

  def all_my_matches
  	 self.own_registered_matches + self.others_registered_matches
  end

end
