require 'jekyll-watch'

module Jekyll
  module Watcher
    class << self
      alias_method :original_listen_ignore_paths, :listen_ignore_paths if method_defined?(:listen_ignore_paths)

      def listen_ignore_paths(options)
        paths = original_listen_ignore_paths(options) rescue []
        paths + [%r!.*\.TMP!i]
      end
    end
  end
end