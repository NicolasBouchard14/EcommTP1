class Task < ApplicationRecord
  belongs_to :project
  has_many :sub_tasks, inverse_of: :task
  validates_presence_of :name
  accepts_nested_attributes_for :sub_tasks, :reject_if => :all_blank, :allow_destroy => true 
end
