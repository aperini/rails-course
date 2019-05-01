class Answer < ApplicationRecord

  # DRY
  include HasGravatar

  belongs_to :question
end
