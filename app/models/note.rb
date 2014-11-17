class Note < ActiveRecord::Base
  belongs_to :author

  validates :title, presence: true
  validates :content, presence: true
end
