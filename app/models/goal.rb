class Goal < ApplicationRecord
	validates :title, presence: true
	belongs_to :creator, class_name: 'User', foreign_key: 'user_id'
	has_many :milestones, class_name:'Milestone', foreign_key: 'goal_id'
	has_many :notes, class_name: 'Note', foreign_key: 'goal_id'

	accepts_nested_attributes_for :milestones, allow_destroy: true, reject_if: ->(attrs) { attrs['title'].blank? }
end
