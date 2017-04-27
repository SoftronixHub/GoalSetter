class Note < ApplicationRecord	
    validates :comment, presence: true 
	belongs_to :goal, class_name: 'Goal', foreign_key: 'goal_id'
   mount_uploader :attachment, AttachmentUploader
end
