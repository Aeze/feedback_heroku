class Issue < ActiveRecord::Base
  acts_as_votable
  acts_as_commontable

  validates_presence_of :name, :issue_type, :description
  validates_uniqueness_of :name, :description
  validates :issue_type, inclusion: { in: %w(Bug\ Report Feature\ Request),
    message: "%{value} is not a valid type" }

  def vote_count
    self.votes_for.count
  end

  def self.sorted_by_vote_count
    Issue.all.sort_by(&:vote_count).reverse.take(5)
  end

  belongs_to :user
end
