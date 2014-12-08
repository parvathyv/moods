
class User < ActiveRecord::Base

	has_many :user_moods, dependent: :destroy
end
