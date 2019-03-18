class Post < ActiveRecord::Base
    validate :title, presence: true
    validate :category, include: { in: %w(Fiction Non-Fiction)}
    validate :content, length: { minimun: 100 }
end
