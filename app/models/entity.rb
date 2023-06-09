class Entity < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  belongs_to :group, class_name: 'Group', foreign_key: 'group_id'

  validates :name, presence: true, length: { minimum: 1, maximum: 80 }
end
