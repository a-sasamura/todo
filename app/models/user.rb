class User < ApplicationRecord  
  validates_presence_of :name

  #いくつかのタスクを持つ（複数形）
  has_many :tasks
  #いくつかのカテゴリーを持つ（複数形）
  has_many :categories
end
