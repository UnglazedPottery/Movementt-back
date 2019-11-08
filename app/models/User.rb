class User < ActiveRecord::Base
    include Rails.application.routes.url_helpers 

    has_many :posts
    has_one_attached :avatar
    has_secure_password
    validates :username, presence: true, uniqueness: true

    def file_url
        begin
            url_for(self.avatar)
        rescue => error
            ""
        end
    end
end