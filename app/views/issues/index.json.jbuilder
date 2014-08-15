json.array!(@issues) do |issue|
  json.extract! issue, :id, :name, :issue_type, :description
  json.url issue_url(issue, format: :json)
  json.upvotes issue.vote_count
end
