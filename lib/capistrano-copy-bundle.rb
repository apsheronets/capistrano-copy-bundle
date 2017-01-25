module CapistranoCopyBundle
  class << self

    def tarfile_name
      "#{fetch(:application)}-bundle.tar.gz"
    end

    def local_tarfile
      "#{fetch(:tmp_dir)}/#{tarfile_name}"
    end

    def remote_tarfile
      "#{fetch(:tmp_dir_remote, fetch(:tmp_dir))}/#{tarfile_name}"
    end

  end
end
