module Dcrug
  class Post < ActiveRecord::Base
    acts_as_content_block
    is_addressable path: "/posts", template: "subpage"
    content_module :dcrug

    def self.most_recent_first
      order('release_date desc')
    end

  end
end
