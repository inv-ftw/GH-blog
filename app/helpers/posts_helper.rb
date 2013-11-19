module PostsHelper
  def author_helper(post)
    '-- ' + post.user.name + ' @ ' + Russian::strftime(post.created_at, "%e %B %G, %R")
  end


end
