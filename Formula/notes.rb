class Notes < Formula
  desc "A simple note converting application"
  head "https://github.com/BraedonWooding/notes.git"

  def install
    system "./install"
  end
  
  def uninstall
    system "./uninstall"
  end
end
