class Issue < ActiveRecord::Base
  acts_as_votable
  acts_as_commontable

  validates_presence_of :name, :issue_type, :description

end
