class Inquiry < ApplicationRecord
  belongs_to :user
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true
  validates :content, length: { maximum: 200 }
  validates :answer, length: { maximum: 200 }
end
