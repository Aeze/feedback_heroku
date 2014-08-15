class PagesController < ApplicationController

  before_action :authenticate_admin!, only: [:admin]

  def home
    @posts = Post.paginate(page: params[:page], per_page: 5)
    @feature_requests = Issue.where("issue_type = 'Feature Request'").sorted_by_vote_count
    @bug_reports = Issue.where("issue_type = 'Bug Report'").sorted_by_vote_count
  end

  def admin
    @users = User.all
    @posts = Post.all
    @issues = Issue.all
  end
end
