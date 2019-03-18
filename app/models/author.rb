class Author < ActiveRecord::Base
  validate :name, presence: true
  validates :email, uniqueness: true
end
