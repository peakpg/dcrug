Dcrug::Application.routes.draw do
  get "most-recent-post" => "most_recent_post#index"
  namespace :dcrug do content_blocks :posts end
  namespace :dcrug do content_blocks :sliders end

  # Augmented version of 
  #   mount Cms::Engine, at: "cms"
  mount_browsercms
end
