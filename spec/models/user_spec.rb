require 'rails_helper'

describe User do
  context 'enum' do
    it 'should have enum for gender' do
      expect(User.genders).to eq('male' => 0, 'female' => 1)
    end
  end

  context 'associations' do
    let!(:user) { FactoryBot.create(:user) }
    let!(:loyalty_account) { FactoryBot.create(:loyalty_account) }

    before { user.loyalty_account = loyalty_account }

    it 'should belongs to loyalty_account' do
      expect(user.loyalty_account).to be(loyalty_account)
    end

    it 'should be instance of class Loyalty::Account' do
      expect(user.loyalty_account).to be_a(Loyalty::Account)
    end
  end

  context 'validations' do
    let!(:user) { FactoryBot.build(:user, country: 'sg') }

    context 'country_details' do
      it 'should be nil before save' do
        expect(user.country_details).to be_nil
      end

      it 'should have hash with deails according to country after save' do
        user.save!
        expect(user.country_details).to eq('name' => 'Singapore', 'demonym' => 'Singaporean')
      end
    end
  end
end
