class Post < ActiveRecord::Base

belongs_to :admin

default_scope { order('date_posted DESC') }

end
