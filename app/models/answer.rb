class Answer < ApplicationRecord
  belongs_to :question
  belongs_to :answerer, class_name: :User
  has_many :comments, as: :commentable
  has_many :votes, as: :votable

  validates :content, null: false
end
