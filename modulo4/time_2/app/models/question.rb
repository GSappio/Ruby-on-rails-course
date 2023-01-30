class Question < ApplicationRecord
  belongs_to :subjecti, inverse_of: :question
  has_many :answers
  accepts_nested_attributes_for :answers, reject_if: :all_blank, allow_destroy: true
 end