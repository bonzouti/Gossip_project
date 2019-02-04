class Comment < ApplicationRecord
    validates :content, presence: true
    validates :user, presence: true
    belongs_to :user
    belongs_to :gossip
    has_many :likes
end
