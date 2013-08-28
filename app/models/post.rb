class Post < ActiveRecord::Base
  belongs_to :category

  before_save :generate_secret_url

  def generate_secret_url
    self.secret_url = SecureRandom.hex(10)
  end
end
