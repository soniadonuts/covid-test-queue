# require 'rails_helper'

# RSpec.describe User, type: :model do
#   context 'validation tests' do
#     it 'ensures name presence' do
#       user = User.new(surname: 'Gautam',  gender: 'Other',  dob: '2023-05-29', citizen_id: '1234567890123', address: 'donuts', contact_number: '0990900909', password: '12345', password_confirmation: '12345').save
#       expect(user).to eq(false)
#     end

#     it 'ensures surname presence' do
#       user = User.new(name: 'Sonia',  gender: 'Other',  dob: '2023-05-29', citizen_id: '1234567890123', address: 'donuts', contact_number: '0990900909', password: '12345', password_confirmation: '12345').save
#       expect(user).to eq(false)
#     end

#     it 'ensures gender presence' do
#       user = User.new(name: 'Sonia', surname: 'Gautam', dob: '2023-05-29', citizen_id: '1234567890123', address: 'donuts', contact_number: '0990900909', password: '12345', password_confirmation: '12345').save
#       expect(user).to eq(false)
#     end

#     it 'ensures date of birth presence' do
#       user = User.new(name: 'Sonia', surname: 'Gautam', gender: 'Other', citizen_id: '1234567890123', address: 'donuts', contact_number: '0990900909', password: '12345', password_confirmation: '12345').save
#       expect(user).to eq(false)
#     end

#     it 'ensures citizen id presence' do
#       user = User.new(name: 'Sonia', surname: 'Gautam', gender: 'Other', dob: '2023-05-29', address: 'donuts', contact_number: '0990900909', password: '12345', password_confirmation: '12345').save
#       expect(user).to eq(false)
#     end

#     it 'ensures citizen id uniqueness' do
#       user1 = User.new(name: 'Sonia', surname: 'Gautam', gender: 'Other', dob: '2023-05-29', citizen_id: '1234567890123', address: 'donuts', contact_number: '0990900909', password: '12345', password_confirmation: '12345').save
#       user2 = User.new(name: 'Tamonwan', surname: 'Boonpa', gender: 'Female', dob: '2023-04-25', citizen_id: '1234567890123', address: 'donuts', contact_number: '0990900909', password: '12345', password_confirmation: '12345').save
#       expect(user2).to eq(false)
#     end

#     it 'ensures citizen id length (13 digits)' do
#       user1 = User.new(name: 'Sonia', surname: 'Gautam', gender: 'Other', dob: '2023-05-29', citizen_id: '1234567890123', address: 'donuts', contact_number: '0990900909', password: '12345', password_confirmation: '12345').save
#       user2 = User.new(name: 'Tamonwan', surname: 'Boonpa', gender: 'Female', dob: '2023-04-25', citizen_id: '1234567890123', address: 'donuts', contact_number: '0990900909', password: '12345', password_confirmation: '12345').save
#       expect(user2).to eq(false)
#     end

#     it 'ensures address presence' do
#       user = User.new(name: 'Sonia', surname: 'Gautam', gender: 'Other', dob: '2023-05-29', citizen_id: '1234567890123', contact_number: '0990900909', password: '12345', password_confirmation: '12345').save
#       expect(user).to eq(false)
#     end

#     it 'ensures contact number presence' do
#       user = User.new(name: 'Sonia', surname: 'Gautam', gender: 'Other', dob: '2023-05-29', citizen_id: '1234567890123', address: 'donuts', password: '12345', password_confirmation: '12345').save
#       expect(user).to eq(false)
#     end

#     it 'ensures password presence' do
#       user = User.new(name: 'Sonia', surname: 'Gautam', gender: 'Other', dob: '2023-05-29', citizen_id: '1234567890123', address: 'donuts', contact_number: '0990900909', password_confirmation: '12345').save
#       expect(user).to eq(false)
#     end

#     it 'ensures password confirmation presence' do
#       user = User.new(name: 'Sonia', surname: 'Gautam', gender: 'Other', dob: '2023-05-29', citizen_id: '1234567890123', address: 'donuts', contact_number: '0990900909', password: '12345').save
#       expect(user).to eq(false)
#     end

#     it 'should save successfully' do
#       user = User.new(name: 'Sonia', surname: 'Gautam', gender: 'Other', dob: '2023-05-29', citizen_id: '1234567890123', address: 'donuts', contact_number: '0990900909', password: '12345', password_confirmation: '12345').save
#       expect(user).to eq(true)
#     end

    
#   end
# end



require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validate' do

    let(:name) { 'Sonia' }
    let(:surname) { 'Gautam' }
    let(:gender) { 'Female' }
    let(:dob) { '2002-03-27' }
    let(:citizen_id) { '1234567859002' }
    let(:address) { 'Donuts BKK' }
    let(:contact_number) { '0956964843' }
    let(:password) { '12345' }
    let(:password_confirmation) { '12345' }

    let(:user) do
      User.new(
        name: name,
        surname: surname,
        gender: gender,
        dob: dob,
        citizen_id: citizen_id,
        address: address,
        contact_number: contact_number,
        password: password,
        password_confirmation: password_confirmation
      )
    end

    context 'name' do
      context 'case: valid' do
        it { expect(user).to be_valid}
      end

      context 'case: invalid' do
        let(:name) { '' }
        it { expect(user).to_not be_valid}
      end
    end

    context 'surname' do
      context 'case: valid' do
        it { expect(user).to be_valid}
      end

      context 'case: invalid' do
        let(:surname) { '' }
        it { expect(user).to_not be_valid}
      end
    end

    context 'surname' do
      context 'case: valid' do
        it { expect(user).to be_valid}
      end

      context 'case: invalid' do
        let(:surname) { '' }
        it { expect(user).to_not be_valid}
      end
    end

    context 'gender' do
      context 'case: valid' do
        it { expect(user).to be_valid}
      end

      context 'case: invalid' do
        let(:gender) { '' }
        it { expect(user).to_not be_valid}
      end
    end

    context 'dob' do
      context 'case: valid' do
        it { expect(user).to be_valid}
      end

      context 'case: invalid' do
        let(:dob) { '' }
        it { expect(user).to_not be_valid}
      end
    end

    context 'citizen id' do
      context 'case: valid' do
        it { expect(user).to be_valid}
      end

      context 'case: invalid' do
        let(:citizen_id) { '' }
        it { expect(user).to_not be_valid}
      end

      context 'case: length is' do
        context 'less than 13' do
          let(:citizen_id) { '1234567890' }
          it { expect(user).to_not be_valid}
        end
          
        context 'more than 13' do
          let(:citizen_id) { '12345678901234' }
          it { expect(user).to_not be_valid}
        end
      end

      context 'case: not numeric' do
        let(:citizen_id) { '1234567890ABC' }
        it { expect(user).to_not be_valid}
      end

      context 'case: not unique' do
        user1 = User.new(name: 'Sonia', surname: 'Gautam', gender: 'Other', dob: '2023-05-29', citizen_id: '1234567890123', address: 'donuts', contact_number: '0990900909', password: '12345', password_confirmation: '12345').save
        user2 = User.new(name: 'Tamonwan', surname: 'Boonpa', gender: 'Female', dob: '2023-04-25', citizen_id: '1234567890123', address: 'donuts', contact_number: '0990900909', password: '12345', password_confirmation: '12345').save
        it { expect(user2).to eq(false) }
      end
    end

    context 'address' do
      context 'case: valid' do
        it { expect(user).to be_valid}
      end

      context 'case: invalid' do
        let(:address) { '' }
        it { expect(user).to_not be_valid}
      end
    end

    context 'contact number' do
      context 'case: valid' do
        it { expect(user).to be_valid}
      end

      context 'case: invalid' do

        context 'contact number' do
          let(:contact_number) { '' }
          it { expect(user).to_not be_valid}
        end

        context 'case: length is' do
          context 'less than 10' do
            let(:contact_number) { '099909909' }
            it { expect(user).to_not be_valid}
          end
            
          context 'more than 10' do
            let(:contact_number) { '09889009090' }
            it { expect(user).to_not be_valid}
          end
        end
  
        context 'case: not numeric' do
          let(:contact_number) { '09A2345678' }
          it { expect(user).to_not be_valid}
        end

        context 'contact number' do
          let(:contact_number) { '' }
          it { expect(user).to_not be_valid}
        end
      end
    end

    context 'password' do
      context 'case: valid' do
        it { expect(user).to be_valid}
      end

      context 'case: invalid' do
        context 'password' do
          let(:password) { '' }
          it { expect(user).to_not be_valid}
        end

        context 'password confirmation' do
          let(:password_confirmation) { '' }
          it { expect(user).to_not be_valid}
        end

        context 'password mismatch' do
          let(:password_confirmation) { '67890' }
          it { expect(user).to_not be_valid}
        end

      end
    end

  end
end
  