class Message < ActiveRecord::Base
    belongs_to :user

    validates :message, presence: true
    validates :message, length: { minimum: 2 }
end
