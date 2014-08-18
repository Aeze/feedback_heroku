json.array!(@issues) do |issue|
  json.extract! issue, :id, :name, :issue_type, :description, :created_at, :open
  json.url issue_url(issue, format: :json)
  json.upvotes issue.vote_count
end
