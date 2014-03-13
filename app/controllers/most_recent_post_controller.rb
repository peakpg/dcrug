class MostRecentPostController < ApplicationController
  include Cms::Acts::ContentPage
  layout "templates/subpage"

  before_action :pretend_to_be_page

  def index
    @post = Dcrug::Post.limit(1).most_recent_first.first
  end

  # Boilerplate I want to eliminate need for
  def current_page
    @page
  end

  def pretend_to_be_page
    root = Cms::Section.root.first
    @page = OpenStruct.new(page_title: "Most Recent Post", 
                           path: "/most-recent-post", 
                           section: root, 
                           ancestors: [root])
  end
end

