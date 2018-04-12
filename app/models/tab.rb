class Tab < ApplicationRecord
  belongs_to :user

  validates_presence_of :url

  def title_or_url
    self.title || self.url
  end

end
