require 'thor'

module Hanami
  module Auth
    def Auth.included(thor)
      thor.class_eval do
        desc 'auth', 'Generate an auth app'
        long_desc <<-EOS
        EOS
        def auth
          if options[:help]
            invoke :help, ['auth']
          else
            Hanami::Commands::Auth.new(options).start
          end
        end
      end
    end
  end
end
