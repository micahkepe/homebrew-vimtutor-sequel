class VimtutorSequel < Formula
  desc "Vimtutor Sequel - Advanced Vim Tutor Lessons"
  homepage "https://github.com/micahkepe/vimtutor-sequel"
  url "https://github.com/user-attachments/files/16475842/vimtutor-sequel-1.0.tar.gz"
  sha256 "7ee6d69858f508f8db738e8172877523481c91735b8a86b4b64e7a50f0a250b7"

  def install
    bin.install "vimtutor-sequel.sh" => "vimtutor-sequel"
    pkgshare.install "vimtutor-sequel.txt"
    pkgshare.install "vimtutor-sequel.vimrc"
  end

  def caveats
    <<~EOS
      To run vimtutor-sequel, simply type `vimtutor-sequel` in your terminal.
    EOS
  end

  test do
    assert_predicate testpath/"#{pkgshare}/vimtutor-sequel.txt", :exist?
    system "#{bin}/vimtutor-sequel"
  end
end
