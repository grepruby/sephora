require 'rails_helper'

describe User do
  context "enum" do
    it { should define_enum_for(:gender).with( male: 0, female: 1) }
  end

  context "associations" do
    it { should belong_to(:loyalty_account).class_name('Loyalty::Account') }
  end
end
