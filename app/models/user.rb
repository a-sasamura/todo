class User < ApplicationRecord  
  validates_presence_of :name
  validates_uniqueness_of :name

  #いくつかのタスクを持つ（複数形）
  has_many :tasks
  #いくつかのカテゴリーを持つ（複数形）
  has_many :categories

  has_secure_password
end
