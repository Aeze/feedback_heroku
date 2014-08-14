require 'spec_helper'

describe Issue do 
  it "is valid with a title, type and description" do 
    issue = Issue.new(
      name: 'This is a crazy bug',
      issue_type: 'Bug Report',
      description: 'This is a short description of the bug')
    expect(issue).to be_valid
  end

  it "is invalid without a name" do 
    expect(Issue.new(name: nil)).to have(1).errors_on(:name)
  end

  it "is invalid without a type" do 
    expect(Issue.new(issue_type: nil)).to have(1).errors_on(:issue_type)
  end

  it "is invalid without a description" do 
    expect(Issue.new(description: nil)).to have(1).errors_on(:description)
  end

  it "is invalid without proper type" do 
    issue = Issue.new(
      name: 'This is a crazy bug',
      issue_type: 'Invalid Type',
      description: 'This is a short description of the bug')
    expect(issue).to have(1).errors_on(:issue_type)
  end

end