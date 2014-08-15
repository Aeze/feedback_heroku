require 'spec_helper'

describe Issue do 

  context "validations" do 

    it "has a valid factory" do 
      expect(build(:issue)).to be_valid
    end
  
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
      expect(Issue.new(issue_type: nil)).to have(2).errors_on(:issue_type)
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
  
    it "is invalid with a duplicate name" do 
      Issue.create(
        name: 'Crazy bug',
        issue_type: 'Bug Report',
        description: 'Short description of the bug')
  
      issue = Issue.new(
        name: 'Crazy bug',
        issue_type: 'Bug Report',
        description: 'Short description of the bug')
    
      expect(issue).to have(1).errors_on(:name)
    end
  
    it "is invalid with a duplicate description" do 
      Issue.create(
        name: 'Crazy bug',
        issue_type: 'Bug Report',
        description: 'Short description of the bug')
  
      issue = Issue.new(
        name: 'Crazy bug',
        issue_type: 'Bug Report',
        description: 'Short description of the bug')
  
      expect(issue).to have(1).errors_on(:description)
    end
  end

  context "instance methods" do 

    it 'returns the proper amount of votes it has with vote_count' do 
      issue = create(:issue)
      users = []
  
      3.times do 
        user = create(:user)
        users << user
      end
  
      users.each do |user|
        issue.liked_by user
      end
  
      expect(issue.vote_count).to eq 3
    end
  
    it 'returns the proper order of issues by vote count' do 
      issue1 = create(:issue)
      issue2 = create(:issue)
      issue3 = create(:issue)
      users = []
      sorted = [issue2, issue3, issue1]

      3.times do 
        user = create(:user)
        users << user
      end

      users.each do |user|
        issue2.liked_by user
      end

      users[0..1].each do |user|
        issue3.liked_by user
      end

      expect(Issue.sorted_by_vote_count).to eq(sorted)
    end
    
  end
end