class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  has_many :entities, class_name: 'Entity', foreign_key: 'author_id'
  has_many :groups, class_name: 'Group', foreign_key: 'author_id'

  validates :name, presence: true, length: { minimum: 3, maximum: 16 }
end