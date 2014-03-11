module Dcrug
  class Post < ActiveRecord::Base
    acts_as_content_block
    is_addressable path: "/posts", template: "subpage"
    content_module :dcrug
  end
end
