require 'spec_helper'

describe User do

  describe ".new" do
    let!(:user) do
      User.create(email: 'qc@gmail.com')
    end

    it "has .wink_at" do
      expect(user).to respond_to(:wink_at)
    end

    it "has .has_winked_at" do
      expect(user).to respond_to(:has_winked_at)
    end


  end

  describe '.wink_at' do

    let!(:user_first) do
      User.new(email: "qc@gamil.com")
    end

    let!(:user_second) do
      User.new(email: "cc@gamil.com")
    end

    it "can wink at another user" do
      user_first.wink_at(user_second)
      expect(user_first.has_winked_at(user_second)).to be_true
    end


  end


end
