class VimtutorSequel < Formula
  desc "Vimtutor Sequel - Advanced Vim Tutor Lessons"
  homepage "https://github.com/micahkepe/vimtutor-sequel"
  url "https://github.com/micahkepe/vimtutor-sequel/releases/download/v1.1/vimtutor-sequel-1.1.tar.gz"
  sha256 "35f9fcecf7fa027598593307155c624e7dbd7a4394e1c286a33d179bd405e19b"

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
