# frozen_string_literal: true

RSpec.describe Maju do
  it "has a version number" do
    expect(Maju::VERSION).not_to be nil
  end

  describe 'Config token' do 
    it "need to pass api_token params" do
      t = 'xxxxxxxxx'
      maju = Maju::Client.new( api_token: t )
      expect(maju.token).to eq(t)
    end


    it "raise error if don't pass api_token params" do
      t = 'xxxxxxxxx'
      expect {
        maju = Maju::Client.new({})
      }.to raise_error(RuntimeError)
    end
  end
end

