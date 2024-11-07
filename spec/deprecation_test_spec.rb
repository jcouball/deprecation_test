# frozen_string_literal: true

RSpec.describe DeprecationTest do
  it "has a version number" do
    expect(DeprecationTest::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(true)
  end
end
