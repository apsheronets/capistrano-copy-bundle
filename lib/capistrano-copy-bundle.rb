module CapistranoCopyBundle

  def CapistranoCopyBundle.tarfile_name
    "#{fetch(:application)}-bundle.tar.gz"
  end

  def CapistranoCopyBundle.local_tarfile
    "#{fetch(:tmp_dir)}/#{tarfile_name}"
  end

  def CapistranoCopyBundle.remote_tarfile
    "#{fetch(:tmp_dir_remote, fetch(:tmp_dir))}/#{tarfile_name}"
  end

end
