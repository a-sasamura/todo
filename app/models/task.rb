class Task < ApplicationRecord
  validates_presence_of :name

  #ユーザーの持ち物（単数形）
  belongs_to :user
end
