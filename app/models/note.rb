class Note < ActiveRecord::Base
  belongs_to :user

  validates :title, presence: true
  validates :content, presence: true

  scope :sorted, lambda { order('created_at DESC') }

end
