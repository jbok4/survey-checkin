require 'rails_helper'

RSpec.describe User, type: :model do 


  describe 'validations' do

    it 'requires a name, email, phone, insurance_co, insurance_number upon creation' do
      user = build(:user, name: nil, email: nil, phone: nil, insurance_co: nil, insurance_number: nil)
      
      expect(user.valid?).to equal(false)
      expect(user.errors.full_messages).to eq([
        "Name can't be blank",
        "Email can't be blank",
        "Phone can't be blank",
        "Insurance co can't be blank",
        "Insurance number can't be blank"
        ])
    end


    it 'requires that a name is unique'

    it 'requires that an insurance_number is unique'

    it 'requires that a phone number has 10 digits'

    it 'requires that an email address is valid'

  end

  describe 'relationships' do
    
    it 'has many doctors'

  end

end