class Picture < ActiveRecord::Base

  attr_accessor :upvote, :downvote

  has_many :comments, dependent: :destroy
  validates :title, presence: true,
                    length: { minimum: 1 }
  before_save :increment_vote

  def increment_vote
  	if self.upvote == true	
      self.upvotes += 1
    elsif self.downvote == true
      self.downvotes += 1
    end
  end



end
