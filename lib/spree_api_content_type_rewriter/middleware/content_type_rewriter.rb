module SpreeApiContentTypeRewriter
  module Middleware
    class ContentTypeRewriter
      def initialize(app)
        @app = app
      end

      def call(env)
        p 1
        status, headers, response = @app.call(env)
        #headers['Content-Type'] = 'application/json' if env['action_dispatch.request.path_parameters'][:format] == 'json'
        headers['Content-Type'] = 'application/json'
        [status, headers, response]
      end
    end
  end
end
