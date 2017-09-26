require 'rails_helper'

RSpec.describe Cuisine, type: :model do
  describe ".add" do
    context "given an empty string" do
      it "returns zero" do
        expect(Cuisine.all.count).to eql(0)
      end
    end
  end
end
