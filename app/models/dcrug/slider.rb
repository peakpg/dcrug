module Dcrug
  class Slider < ActiveRecord::Base
    acts_as_content_block
    content_module :dcrug
  end
end
