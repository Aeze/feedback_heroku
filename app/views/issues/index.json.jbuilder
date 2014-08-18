json.array!(@issues) do |issue|
  json.extract! issue, :id, :name, :issue_type, :description, :open
  json.created_at issue.created_at.to_formatted_s(:short)   
  json.url issue_url(issue)
  json.upvotes issue.vote_count
end
