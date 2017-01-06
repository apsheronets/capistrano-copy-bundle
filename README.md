Works with capistrano 3.x. For capistrano 2.x see https://github.com/rudionrails/capistrano-strategy-copy-bundled

You may also like: https://github.com/xuwupeng2000/capistrano-scm-gitcopy

How to use
----------

Gemfile:

    group :development do
      gem 'capistrano-bundler'
      gem 'capistrano-copy-bundle', git: 'git@gitlab.work:vimpelcom/framework.git'
    end

Capfile:

    require 'capistrano/bundler'
    require 'capistrano3/copybundle

config/deploy.rb:

    before "bundler:install", "deploy:copy_bundle"

Special thanks
--------------

To [VimpelCom Ltd.](http://komar.bitcheese.net/files/vimpelcom.jpg) whose fucked up intranet inspired me to make this gem.

Feedback
--------

apsheronets@gmail.com
