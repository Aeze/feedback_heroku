class PagesController < ApplicationController
  def home
    @posts = Post.all
    @feature_requests = Issue.where("issue_type = 'Feature Request'").sorted_by_vote_count
    @bug_reports = Issue.where("issue_type = 'Bug Report'").sorted_by_vote_count
  end
end
