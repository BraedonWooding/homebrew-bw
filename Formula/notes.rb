class Notes < Formula
  desc "A simple note converting application"
  head "https://github.com/BraedonWooding/notes.git"

  head do
    url "https://github.com/BraedonWooding/notes.git"
    depends_on "pandoc" => :build
  end
  
  def install
    bin.mkpath
    bin.install "notes.sh"
    bin.install "daemon_notes.sh"
    mv bin/"notes.sh", bin/"notes"
    mv bin/"daemon_notes.sh", bin/"daemon_notes"
    mkdir_p share/"notes_data"
    mv "style.css", share/"notes_data"
    mv "template.html", share/"template.html"
  end
end
