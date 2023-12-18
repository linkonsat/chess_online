require 'rails_helper'

RSpec.describe User, type: :model do
    context "With the correct input." do 
      it "Accepts a valid user." do 
         user = build(:user)
         expect(user.valid?).to eq(true)

      end 
    end

    context "With the wrong input." do 
      it "Rejects passwords without enough characters." do 
        user = build(:user, password: "1")
        first_user = user.valid?
        expect(first_user).to eq(false)

      end
      it "Rejects blank passwords." do 
        user = build(:user, password: "")
        first_user = user.valid?
        expect(first_user).to eq(false)

      end
      it "Rejects blank usernames." do 
        user = build(:user, username: "")
        first_user = user.valid?
        expect(first_user).to eq(false)

      end
      it "Rejects a username if they already exist." do 
        user = create(:user)
        second_user = build(:user)
        invalid_user = second_user.valid?
        expect(invalid_user).to eq(false)

      end
    end
end
