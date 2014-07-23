class Selection < ActiveRecord::Base
  belongs_to :user
  belongs_to :web_page
  accepts_nested_attributes_for :web_page
end
