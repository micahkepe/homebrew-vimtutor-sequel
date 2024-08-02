class VimtutorSequel < Formula
  desc "Vimtutor Sequel - Advanced Vim Tutor Lessons"
  homepage "https://github.com/micahkepe/vimtutor-sequel"
  url "https://github.com/micahkepe/vimtutor-sequel/releases/download/v1.0/vimtutor-sequel-1.0.tar.gz"
  sha256 "b103aaf31ddfe767429e59ce0bf2024d84115b13091322a3efde9ee17b174edf"

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
