class RecentPostsPortlet < Cms::Portlet

  description "Simple list of recent posts"

  # Mark this as 'true' to allow the portlet's template to be editable via the CMS admin UI.
  enable_template_editor false
     
  def render
    @posts = Dcrug::Post.limit(self.max_posts).most_recent_first
  end
    
end