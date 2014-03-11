class PostsPortlet < Cms::Portlet

  description "Lists all Posts for the homepage."

  # Mark this as 'true' to allow the portlet's template to be editable via the CMS admin UI.
  enable_template_editor false
     
  def render
    @posts = Dcrug::Post.order("release_date desc").all
  end
    
end