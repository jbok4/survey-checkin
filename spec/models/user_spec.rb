require 'rails_helper'

RSpec.describe User, type: :model do 


  describe 'validations' do

    it 'requires a name, email, phone, insurance_co, insurance_number upon creation' do
      user = build(:user, name: nil, email: nil, phone: nil, insurance_co: nil, insurance_number: nil)
      
      expect(user.valid?).to equal(false)
      expect(user.errors.full_messages).to eq([
        "Name can't be blank",
        "Email can't be blank",
        "Email is invalid",
        "Phone can't be blank",
        "Insurance co can't be blank",
        "Insurance number can't be blank"
        ])
    end


    it 'requires that name and insurance number are unique' do
      create(:user)
      user = build(:user)

      expect(user.valid?).to equal(false)
      expect(user.errors.full_messages).to eq([
        "Name has already been taken", 
        "Insurance number has already been taken"
        ])
    end

    it 'requires that an email is valid (contains a @ symbol and a .com, .org, etc)' do
      user1 = build(:user, email: 'jackie.com')
      user2 = build(:user, email: 'jackie@jackie')
      user3 = build(:user, email: 'jackie')

      expect(user1.valid?).to equal(false)
      expect(user2.valid?).to equal(false)
      expect(user3.valid?).to equal(false)
    end

  end


end