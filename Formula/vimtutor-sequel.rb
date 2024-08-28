class VimtutorSequel < Formula
  desc "Advanced vimtutor for intermediate vim users"
  homepage "https://github.com/micahkepe/vimtutor-sequel"
  url "https://github.com/micahkepe/vimtutor-sequel/releases/download/v1.3.1/vimtutor-sequel-1.3.1.tar.gz"
  sha256 "190627358111d73170d4b1bc7a9823c511b44a71068a8c54207fdd116f4c2152"
  license "MIT"

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
    system bin/"vimtutor-sequel", "--version" # vimtutor-sequel should return its version
  end
end
