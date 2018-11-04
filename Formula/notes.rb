class Notes < Formula
  desc "A simple note converting application"
  head "https://github.com/BraedonWooding/notes.git"

  head do
    url "https://github.com/BraedonWooding/notes.git"
    depends_on "pandoc" => :build
  end
  
  resource "reveal" do
    url "https://github.com/hakimel/reveal.js.git"
  end
  
  def install
    bin.install "notes.sh"
    bin.install "daemon_notes.sh"
    mv bin/"notes.sh", bin/"notes"
    mv bin/"daemon_notes.sh", bin/"daemon_notes"
    mkdir_p share/"notes_data"
    mv "style.css", share/"notes_data"
    mv "template.html", share/"notes_data"
    mv "config.cfg", share/"notes_data"
    mv "reveal_template.html", share/"notes_data"
    mv "convHead.hs", share/"notes_data"
    mkdir_p share/"reveal"
    resource("reveal").stage { (share/"reveal").install Dir["reveal.js/*"] }
  end
end
