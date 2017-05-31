class User < ActiveRecord::Base
    has_many :messages
    # validates :email, presence: true, length: { minimum: 5 }, uniqueness: true
end
