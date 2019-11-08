class Post < ActiveRecord::Base
    include Rails.application.routes.url_helpers 

    belongs_to :user
    has_many :post_tags
    has_many :tags, through: :post_tags
    has_one_attached :video


    def file_url
        begin
            url_for(self.video)
        rescue => error
            ""
        end
    end
end
