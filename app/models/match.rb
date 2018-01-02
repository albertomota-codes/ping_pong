class Match < ActiveRecord::Base
  belongs_to :opponent, class_name: "User",foreign_key: "opponent_id"
  belongs_to :owner, class_name: "User",foreign_key: "owner_id"

  validates_presence_of :your_score,:their_score,:played_date,:opponent_id
  
end
