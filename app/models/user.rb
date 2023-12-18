class User < ApplicationRecord
    validates :password, length: { minimum: 8, message: "Not long enough."} , presence: {true => "Input required."}
    validates :username, presence: {true => "Input required."} , uniqueness: {true => "Username already exists."}
end
