class Tab < ApplicationRecord
  belongs_to :user

  validates_uniqueness_of :url

  def title_or_url
    self.title || self.url
  end

end
