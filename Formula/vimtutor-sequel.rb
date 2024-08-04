class VimtutorSequel < Formula
  desc "Vimtutor Sequel - Advanced Vim Tutor Lessons"
  homepage "https://github.com/micahkepe/vimtutor-sequel"
  url "https://github.com/micahkepe/vimtutor-sequel/releases/download/v1.2.3/vimtutor-sequel-1.2.3.tar.gz"
  sha256 "9e9f12d2be8eaf263c781c6bf7c8d06f72194576be5c5f5bed6fb9445f28a020"
  version "1.2.3"

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
    system "#{bin}/vimtutor-sequel", "--version" # vimtutor-sequel should return its version
  end
end
