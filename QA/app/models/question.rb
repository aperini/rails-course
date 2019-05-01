# document this class
class Question < ApplicationRecord

  # DRY
  include HasGravatar

  has_many :answers
end
