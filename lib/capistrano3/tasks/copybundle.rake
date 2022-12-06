require "capistrano-copy-bundle"

desc %{execute "BUNDLE_CACHE_ALL=true bundle cache" and store to .tar.gz}
task :make_bundle_package do
  ENV["BUNDLE_CACHE_ALL"] = "true"
  run_locally do
    execute :bundle, "cache"
    execute :tar, "-czf #{CapistranoCopyBundle.local_tarfile} vendor/cache/"
  end
end

namespace :deploy do

  desc "copy bundle to releases"
  task :copy_bundle => :make_bundle_package do
    on release_roles :all do
      within deploy_to do
        upload! CapistranoCopyBundle.local_tarfile, CapistranoCopyBundle.remote_tarfile
        execute :tar, '--extract --file', CapistranoCopyBundle.remote_tarfile, '--directory', shared_path
        execute :rm, CapistranoCopyBundle.remote_tarfile
      end
    end

    run_locally do
      if File.exists? CapistranoCopyBundle.local_tarfile
        execute :rm, CapistranoCopyBundle.local_tarfile
      end
    end
  end

end
