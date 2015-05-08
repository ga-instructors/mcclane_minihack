class User < ActiveRecord::Base
  has_secure_password

  validates :email, presence: true, uniqueness: true
  validates :name,  presence: true
  add_column :users, :phone, :string
end
