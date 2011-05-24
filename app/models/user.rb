class User < ActiveRecord::Base
	
	 #~ attr_accessible :remove_avatar,:remote_avatar_url,:name
	 
	 
	validates_presence_of :name
	
	mount_uploader :avatar, AvatarUploader
	
	
end
