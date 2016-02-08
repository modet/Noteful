class Note < ActiveRecord::Base
  belongs_to :user

  validates :title, presence: true
  validates :content, presence: true

  scope :sorted, lambda { order('created_at DESC') }

end

class Note < ActiveRecord::Base

  def preview
    self.content
      self.content.slice(0..100) << '...(read more)'

  end

end
