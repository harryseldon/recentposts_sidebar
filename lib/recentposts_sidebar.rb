class LastPostsSidebar < Sidebar
  description "Displays the last posts published"

  setting :title,     "Recent Posts", :label => "Title"
  setting :count,     10, :label => "Number of Posts"
  setting :post_length,     150, :label => "Size of the post to be displayed"

  def recent_posts
     @recent_posts = Article.find(:all, :conditions => "published = 1", :order => 'published_at DESC', :limit => count)
  end
  
end