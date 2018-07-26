# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "https://full-throttle.herokuapp.com/"

SitemapGenerator::Sitemap.create do
  # Put links creation logic here.
  #
  # The root path '/' and sitemap index file are added automatically for you.
  # Links are added to the Sitemap in the order they are specified.
  #
  # Usage: add(path, options={})
  #        (default options are used if you don't specify)
  #
  # Defaults: :priority => 0.5, :changefreq => 'weekly',
  #           :lastmod => Time.now, :host => default_host
  #
  # Examples:
  #
  # Add '/articles'
  #
     add posts_path, :priority => 0.7, :changefreq => 'daily'
     add bikes_path, :priority => 0.7, :changefreq => 'daily'
     add learns_path, :priority => 0.7, :changefreq => 'daily'
  #
  # Add all articles:
  #
     Post.find_each do |post|
       add post_path(post), :lastmod => post.updated_at, :priority => 0.5
     end

     Bike.find_each do |bike|
       add bike_path(bike), :lastmod => bike.updated_at, :priority => 0.5
     end

     Learn.find_each do |learn|
       add learn_path(learn), :lastmod => learn.updated_at, :priority => 0.5
     end
end



