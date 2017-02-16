require 'rails_helper'

describe User do
  it {should validate_presence_of :user_name}
  it {should validate_presence_of :email}
end

describe 'the authenticate process' do
  it 'will authenticate and log in a user' do
      user = User.create(user_name: 'john', email: 'john@john.com', password: '1234')
      expect(User.authenticate(user.email, user.password)).to eq(user)
    end
end
