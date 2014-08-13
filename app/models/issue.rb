class Issue < ActiveRecord::Base
  acts_as_votable
  acts_as_commontable
end
