require 'rails_helper'

RSpec.describe CovidTest, type: :model do
  describe 'validate' do

    before do
        user = User.new(name: 'Sonia', surname: 'Gautam', gender: 'Other', dob: '2023-05-29', citizen_id: '7777777777777', address: 'donuts', contact_number: '0990900909', password: '12345', password_confirmation: '12345').save
    end
    
    let(:user_id) { User.find_by(citizen_id: '7777777777777').id }
    let(:test_date) { '2023-05-05' }

    let(:covid_test) do
      CovidTest.new(
        user_id: user_id,
        test_date: test_date
      )
    end

    context 'user_id' do
      context 'case: valid' do
        it { expect(covid_test).to be_valid}
      end

      context 'case: invalid' do
        let(:user_id) { '' }
        it { expect(covid_test).to_not be_valid}
      end
    end

    context 'test_date' do
        context 'case: valid' do
          it { expect(covid_test).to be_valid}
        end
  
        context 'case: invalid' do
          let(:test_date) { '' }
          it { expect(covid_test).to_not be_valid}
        end
    end

  end
end
