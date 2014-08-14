class PagesController < ApplicationController
  def home
    @posts = Post.all
    @feature_requests = Issue.all 
    @bug_reports = Issue.all
  end
end
