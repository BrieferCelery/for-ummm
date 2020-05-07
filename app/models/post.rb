class Post < ApplicationRecord
    belongs_to :user
    has_many :comments, dependent: :delete_all
    has_one_attached :picture
end
