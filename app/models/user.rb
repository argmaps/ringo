class User < ActiveRecord::Base
  authenticates_with_sorcery!

  has_many :selections

  validates_presence_of :email, :password
  validates_length_of :password, :minimum => 6, :message => "must be at least 6 characters long"
  validates :email, :format => /@/
  validates_uniqueness_of :email, { case_sensitive: false }

  def self.current
    RequestStore.store[:user]
  end

  def self.current=(user)
    RequestStore.store[:user] = user
  end
end
