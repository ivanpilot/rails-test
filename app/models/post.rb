class Post < ApplicationRecord

  validates :title, :description, presence: true

  belongs_to :category
  attr_reader :category_name

  def category_name=(name)
    self.category = Category.find_or_create_by(name: name).id
  end

end
