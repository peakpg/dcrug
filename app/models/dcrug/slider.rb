module Dcrug
  class Slider < ActiveRecord::Base
    acts_as_content_block
    content_module :sliders
  end
end
